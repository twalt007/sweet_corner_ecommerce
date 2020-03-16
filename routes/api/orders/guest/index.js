const router = require('express').Router();
const createGuestOrder = require('./create_guest_order');
const guestOrderDetails = require('./guest_order_details');

router.post('/', createGuestOrder);

router.get('/:order_id', guestOrderDetails);

module.exports = router;