const router = require('express').Router();
const itemsRouter = require('./items');
const getCart = require('./get_cart');
const getCartTotals = require('./get_cart_totals');

//GET /api/cart
router.get('/',getCart);

//GET /api/cart/totals
router.get('/totals', getCartTotals);

// ALL METHODS /api/cart/items
router.use('/items', itemsRouter);

module.exports = router;