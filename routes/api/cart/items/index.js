const router = require('express').Router();
const addItemToCart = require('./add_to_cart');

//Route for add_item_to_cart

//POST /api/cart/items/:product
router.post('/:product_id', addItemToCart);

module.exports = router;