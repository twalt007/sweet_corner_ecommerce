const jwt = require('jwt-simple');
const orderConfig = require('../config/order_jwt.json');

module.exports = (req, res, next ) => {
    
    const token = req.headers['x-order-token'];
    req.order = null;
    req.token = null;

    if(!token || token.indexOf('Object') > -1) {
        next();
        return;
    }

    req.token = token;

    const tokenData = jwt.decode(token, orderConfig.secret);

    console.log("token Data: ", tokenData);
    req.order = {
        id: tokenData.orderId
    };

    next();

};
