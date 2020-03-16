const router = require('express').Router();
const productsRouter = require('./products');
const cartRouter = require('./cart');
const orderRouter = require('./orders');
const withCart = require('../../middleware/with_cart');

//  Routes for  /api
router.use('/products',productsRouter);

router.use('/cart', withCart, cartRouter);

router.use('/orders', withCart, orderRouter);

module.exports = router;