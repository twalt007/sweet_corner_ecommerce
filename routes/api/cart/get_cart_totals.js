const db = require('../../../db');
const { getCartTotals } = require('../../../helpers');

module.exports = async (req,res, next) => {
    try{
        const {cart} = req;
        let output = {
            total : {
                cost: 0,
                items: 0
            }
        }

        if(cart){
            output.total = await getCartTotals(cart.id);
        }

        res.send(output);
    } catch (error){
        console.log("error", error);
        next(error);      
    }
}