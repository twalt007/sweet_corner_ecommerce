const router = require('express').Router();
const productsRouter = require('./products');


//  Routes for  /api
router.use('/products',productsRouter);

module.exports = router;