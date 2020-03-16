const router = require('express').Router();
const guestOrder = require('./guest');
const withCart = require('../../../middleware/with_cart');

router.use('/guest', withCart, guestOrder);

module.exports = router;
