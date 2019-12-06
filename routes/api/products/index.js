// const express = require('express');
// const router = express.Router();      ==>

const router = require('express').Router();
const getAllProducts = require('./get_all');
const getDetails = require('./get_details');

//    Routes for /api/products

//   GET  /api/products/     (this last / means there is nothing else here after it, so it goes to getAllProducts)
router.get('/', getAllProducts);

router.get('/:product_id', getDetails);

module.exports = router;