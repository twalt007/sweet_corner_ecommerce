const router = require('express').Router();
const productsRouter = require('./products');
const cartRouter = require('./cart');


//  Routes for  /api
router.use('/products',productsRouter);

router.use('/cart', cartRouter);

module.exports = router;