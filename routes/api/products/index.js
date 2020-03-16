const router = require('express').Router();
const getAllProducts = require('./get_all');
const getDetails = require('./get_details');


router.get('/', getAllProducts);

router.get('/:product_id', getDetails);

module.exports = router;