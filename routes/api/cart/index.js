const router = require('express').Router();
const itemsRouter = require('./items');



router.use('/items', itemsRouter);

module.exports = router;