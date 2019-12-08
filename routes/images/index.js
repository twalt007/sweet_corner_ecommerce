const router = require('express').Router();
const fs = require('fs');
const path = require('path');

//Routers   /images/:type/:file

router.get('/:type/:file',(req, res) => {
    const {type, file} = req.params;

    const imagePath = path.resolve(__dirname, type, file);

    if(fs.existsSync(imagePath)){
        res.sendFile(imagePath);
        return;
    }

    res.status(404).send('Not Found');
});

module.exports = router;