const router = require('express').Router();
const itemsRouter = require('./items');
const getCart = require('./get_cart');
const getCartTotals = require('./get_cart_totals');

router.get('/',getCart);

router.get('/totals', getCartTotals);

router.use('/items', itemsRouter);

module.exports = router;