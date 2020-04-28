const router = require('express').Router();
const apiRouter = require('./api');
const imagesRouter = require('./images');


router.use('/api', apiRouter);

router.use('/images', imagesRouter);


module.exports = router;