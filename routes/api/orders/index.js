const router = require('express').Router();
const guestOrder = require('./guest');

router.use('/guest', guestOrder);

module.exports = router;
