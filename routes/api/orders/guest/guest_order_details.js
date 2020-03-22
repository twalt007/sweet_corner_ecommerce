const db = require('../../../../db');
const { buildUrl, getCartTotals } = require('../../../../helpers/index')

module.exports = async (req, res, next) => {
    
    try{
        const {order_id} = req.params;
        const {email} = req.query;
        let orderInfo = null;



        if(!order_id){
            const error = new ApiError(422, "Invalid order id sent")
            next(error);
            return;
        }
        if(!email){
            const error = new ApiError(400, "Invalid email sent")
            next(error);
            return;
        }
        


        const [[ creds ]] = await db.execute(`
        SELECT email, cartId FROM orders WHERE pid=?
        `, [order_id]);

        if (email === creds.email){
            
            const total = await getCartTotals(creds.cartId);

            const [[ cart ]] = await db.query(`
            SELECT o.createdAt, o.pid AS id, os.name AS status 
            FROM orders AS o 
            JOIN orderStatuses AS os ON o.statusId
            WHERE o.pid=?`, [order_id]);
            
            const [cartData] = await db.execute(`
            SELECT p.cost AS \`each\`, ci.quantity, (cost*quantity) AS total, ci.pid AS id, p.name, p.pid AS productId, i.altText, i.type, i.file FROM cartItems AS ci 
            JOIN products AS p ON p.id = ci.productId
            JOIN images AS i ON i.productId = p.id
            WHERE ci.cartId=? AND i.type="thumbnail"`, [creds.cartId]);

            const items = cartData.map( item => {
                const {productId, altText, file, type, ...p} = item;
                return {
                    ...p,
                    id: productId,
                    thumbnail: {
                        altText,
                        url: buildUrl(req, type, file)
                    }
                }
            })

            console.log("items: ", items, "cardData: ", cartData);

            orderInfo = {
                itemCount: total.items,
                total: total.cost,
                ...cart,
                items
            }
            
        }
        res.send(orderInfo);

    }catch(error){
        console.log("error", error);
        next(error); 
    }
    
}
