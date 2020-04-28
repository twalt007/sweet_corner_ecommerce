const db = require('../../../db');
const { buildUrl, getCartTotals } = require('../../../helpers');

module.exports = async (req,res, next) => {
    try{
        const {cart} = req;
        let output = {
            cartId: null,
            message: "No active cart"
        }

        if(cart){
            
            const [cartData] = await db.execute(`
            SELECT ci.pid AS cartId, ci.createdAt AS added, p.cost AS \`each\`, ci.pid as itemId, p.name as name, p.pid as productId, ci.quantity, (cost*quantity) AS total, i.altText, i.type, i.file FROM cartItems AS ci
            JOIN products AS p ON ci.productId = p.id
            JOIN images AS i ON p.id = i.productId
            WHERE ci.cartId = ? AND i.type="thumbnail"
            `, [cart.id]);

            const items = cartData.map(item => {
                const {altText, file, type, ...p} = item;
                return {
                    ...p,
                    thumbnail: {
                        altText,
                        url: buildUrl(req,type,file)
                    }
                }
            });

            output.cartId = cartData[0].cartId;
            delete output.message;
            output.items = items;
            output.total = await getCartTotals(cart.id);
        }

        res.send(output);
    } catch (error){
        console.log("error", error);
        next(error);        
    }
}