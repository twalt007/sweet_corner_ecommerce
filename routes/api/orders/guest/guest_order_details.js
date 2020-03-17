const db = require('../../../../db');

module.exports = async (req, res, next) => {
    
    try{
        const {order_id} = req.params;
        const {email} = req.query;

        console.log("order_id: ", order_id, "email: ", email);

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
        
        const [[ordersQuery]] = await db.execute(`
        SELECT email, cartId FROM orders WHERE pid=?
        `, [order_id]);

        console.log("email: ", ordersQuery.email);

        // if (email === orderEmail){
        //     const [[ results ]] = await db.query(`
        //     SELECT `)
        // }

        // itemCount --> from cartItems "Select Sum(quantity) as itemCount where cardId = ?"
        // total --> getCartTotals (cartId) 
        // createdAt --> from orders
        // id --> order id/Pid   from orders
        // status --> fromo orders
        // items --> [    reference add_items_to_cart
        //     {
        //         each: from products where productID taken from 
        //         quantity: from ci where cartID
        //         total:
        //         id:
        //         product:{
        //             name:
        //             id:
        //             thumbnail: {
        //                 altTect:
        //                 url:
        //             }
        //         }
        //     }
        // ]



        res.send("I work");

    }catch(error){
        console.log("error", error);
        next(error); 
    }
    
    
    //recieve data
    //check that have info
    //check that email aligns with the order id nummber
    //return tuff
}