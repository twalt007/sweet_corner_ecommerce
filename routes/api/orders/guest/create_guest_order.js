const db = require('../../../../db');
const orderJwt = require('../../../../config/order_jwt.json');
const jwt = require('jwt-simple');

module.exports = async (req, res) => {
    try{
        //pull our recieved data  --> needto pull out the cart token, see get cart, plus other user input; need to flesh out below, need to make a database
        const {cart} = req;
        const {body} = req;
        let { order, token } = req;
        console.log("create_guest_order cart: ", cart);
        console.log("create_guest_order body: ", body);
        console.log("create_guest_order token: ", token);
        
        if(cart){

            if(!order){
                const [[ orderStatus ]] = await db.query('SELECT id FROM cartStatuses WHERE mid="active"');
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

        }

        //if no order id, create an order id
        

        res.send({
            body
        })

    }
    
}





//see how much can reason through for this part - get the information from the front end to come, see if can't return thhe infotmation needded/logic out if need to set up new section of db
//readu up on the other stuff I plan to do
//create github acct
//read up on what happened to by server
//add in screenshot of my own blog site so thhat at least have bases covered



//class: try to get server up and running again
//learn about what good pracdtices would be for getting the below API set up
//get my personal portfolio site put up



//test that endpoint working
//create portion of database to store orders, and associate with a guest order
//create a guest order ID number
//get information, make 'clean'
//return information from database
//make cart token invalid  ==> 

// 1. copying cart portion from URLSearchParams
// 2. taking final portion before res. for deleting he cart based off inf in with cart
// 3. checking to see what we don on the front end if there is no token id.  for the guest checkout if clicked at very begining


//next => get guest order details ==> 




//recieve email, name, 





