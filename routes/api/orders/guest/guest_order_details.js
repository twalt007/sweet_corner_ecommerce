const db = require('../../../../db');

module.exports = async (req, res, next) => {
    
    try{
        const {order_id, email} = req.params;
        console.log("order_id: ", order_id, "email: ", email);
        
        if(!order_id || isNaN(order_id)){
            const error = new ApiError(422, "Invalid order id sent")
            next(error);
            return;
        }
        if(!email){
            const error = new ApiError(422, "Invalid email sent")
            next(error);
            return;
        }
        
        console.log('order_id: ', order_id);

        const [ orderEmail ] = await db.query(`
        SELECT email FROM orders WHERE pid = ?
        `, [order_id]);
        console.log("email: ", orderEmail);

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