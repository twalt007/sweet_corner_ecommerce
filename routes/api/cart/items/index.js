const router = require('express').Router();
const addItemToCart = require('./add_to_cart');


router.post('/:product_id', addItemToCart);

module.exports = router;