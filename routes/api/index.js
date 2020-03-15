const router = require('express').Router();
const productsRouter = require('./products');
const cartRouter = require('./cart');
const orderRouter = require('./orders');
const withCart = require('../../middleware/with_cart');
const withOrder = require('../../middleware/with_order');

//  Routes for  /api
router.use('/products',productsRouter);

router.use('/cart', withCart, cartRouter);

router.use('/orders', withCart, withOrder, orderRouter);

module.exports = router;