const router = require('express').Router();
const createGuestOrder = require('./create_guest_order');

router.post('/', createGuestOrder);

module.exports = router;