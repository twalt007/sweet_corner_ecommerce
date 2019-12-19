const db = require('../db');

exports.buildUrl = (req, type, file) => {
    const protocol = req.protocol;
    const host = req.get('host');

    console.log('Protocol: ', protocol);
    console.log('Host: ', host);

    const url = `${protocol}://${host}/images/${type}/${file}`;

    return url;
}

exports.getCartTotals = async (cartId) => {
    const [[totals]] = await db.query(`
    SELECT SUM(quantity) AS items, SUM(cost*quantity) AS cost FROM cartItems AS ci 
    JOIN products AS p  ON ci.productId = p.id
    WHERE cartId = ?`, [cartId]);
    
    return totals;
}