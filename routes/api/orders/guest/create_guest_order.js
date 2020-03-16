const db = require('../../../../db');

module.exports = async (req, res, next) => {

    try{
        
        const {cart} = req;
        const {email, firstName, lastName } = req.body;

        let output = {
            message: "Order error.  Please verify there are items in your cart and the cart is still active.",
            id: null
        }

        if(!email){
            var error = new ApiError(400, "Missing email.");
            next(error);
            return;
        }
        if(!firstName){
            var error = new ApiError(400, "Missing first name.");
            next(error);
            return;
        }
        if(!lastName){
            var error = new ApiError(400, "Missing last name.")
            next(error);
            return;
        }
        if( !cart ){
            var error = new ApiError(400, "Cart information invalid. Cart either does not contain any items or the cart is no longer active.")
            next(error);
            return;
        }
        if( email && firstName && lastName && cart.id ){

            const [[ orderStatus ]] = await db.query('SELECT id FROM orderStatuses WHERE mid="pending"');

            const [result] = await db.execute(`
            INSERT INTO orders 
            (pid, statusId, cartId, firstName, lastName, email)
            VALUES (UUID(), ?, ?, ?, ?, ?)
            `, [orderStatus.id, cart.id, firstName, lastName, email]);

            orderId = result.insertId;

            const [[ uuid ]] = await db.query(`
            SELECT pid FROM orders WHERE id = ?
            `, [orderId]);

            output.message = "Your order has been placed."
            output.id = uuid.pid;
        }

        res.send(output);

    } catch (error){
        console.log("error", error);
        next(error);    
    }
};






