const db = require('../../../../db');
const cartJwt = require('../../../../config/cart_jwt.json');
const jwt = require('jwt-simple');
const { buildUrl, getCartTotals } = require('../../../../helpers')

module.exports = async (req, res) => {

    try{
        // Check for existing cart
        const { product_id } = req.params;
        const { quantity = 1 } = req.body;
        let { cart, token } = req;
        // Check for valid product

        if(isNaN(quantity) || quantity <1){
            var error= new ApiError(422,"Invalid Quantity recieved")
            // res.status(422).send('Invalid Quantity recieved');
            next(error);
            return;
        }

        const [[product = null]] = await db.execute('SELECT id, name FROM products WHERE pid=?', [product_id])
        if(!product) {
            res.status(404).send('Product not found');
            return;
        };
        // If no cart, create a new cart
        if(!cart){
            const [[ cartStatus ]] = await db.query('SELECT id FROM cartStatuses WHERE mid="active"');
            const [ result ] = await db.query('INSERT INTO cart (pid, statusId) VALUES (UUID(), ?)', [cartStatus.id]);
            cart = {
                id: result.insertId
            };
            const tokenData = {
                cartId: cart.id,
                ts: Date.now(),
            };
            token = jwt.encode(tokenData, cartJwt.secret);   ///whathappens once our secret  is gone cause we're using the template in production??
        };

        // Does item already exist in cart
        const [[cartItem = null]] = await db.query('SELECT id FROM cartItems WHERE cartId=? AND productId=?', [cart.id, product.id]);
        // If product already in cart, increase quantity
        if(cartItem) {
            await db.execute('UPDATE cartItems SET quantity=quantity + ? WHERE id=?', [quantity,cartItem.id]);
            //Increase the quantity of the existing cartItem
        } else {
            //create cart item for product
            const [ itemResult ] = await db.execute(`
            INSERT INTO cartItems 
            (pid, cartId, productId, quantity)
            VALUES (UUID(), ?, ?, ?)`, 
            [cart.id, product.id, quantity]);
        };

        const [[cartData]] = await db.query(`
        SELECT c.pid AS cartId, ci.createdAt AS added, p.cost AS 'each', ci.pid AS itemId, p.name, p.pid AS productId, ci.quantity, i.altText, i.type, i.file, (cost * quantity) AS total FROM cartItems AS ci 
        JOIN cart AS c ON ci.cartId=c.id
        JOIN products AS p ON ci.productId=p.id
        JOIN images AS i ON ci.productId=i.productId 
        WHERE cartId=? AND ci.productId=? AND i.type="thumbnail"
        `, [cart.id, product.id]);

        const {cartId, altText, type, file, ...c} = cartData;
        const total = await getCartTotals(cart.id);
        
        // Create a message to send back to user of what was added
        res.send({
            cartToken: token,
            cartId,
            items: {
                ...c,
                thumbnail: {
                    altText,
                    url: buildUrl(req,type,file)
                },
            },
            total
        });
    }catch(error){
        console.log("error: ", error);
        next(error);
    }
}
