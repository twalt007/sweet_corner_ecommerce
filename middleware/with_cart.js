const jwt = require('jwt-simple');
const cartConfig = require('../config/cart_jwt.json');

module.exports = (req, res, next) => {

    const token = req.headers['x-cart-token'];
    req.cart = null;

    if(!token) {
        next();
        return;
    }

    const tokenData = jwt.decode(token, cartConfig.secret);

    console.log("token Data: ", tokenData);
    req.cart = {
        id: tokenData.cartId
    };

    next();
};