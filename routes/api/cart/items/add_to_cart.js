const db = require('../../../../db');

module.exports = async (req, res) => {
    //check for existing cart. 
    let { cart } = req;

    //if no cart, create a new cart
    if (!cart) {
        const [[ cartStatus ]] = await db.query('SELECT id FROM cartStatuses WHERE MID = "active" ');

        console.log('CArt Status: ', cartStatus);

        const [ result ] = await db.query('INSERT INTO cart (pid, statusId) VALUES (UUID(), ?)', [cartStatus.id]);
        
        console.log('Result:', result);
    }
    
    //does item already exist in cart

    //if yes, increase quantity

    //else, create cart item

    //create a message to send back to user on what was added



    res.send({
        message: `This will add an item to your cart someday`
    });
}