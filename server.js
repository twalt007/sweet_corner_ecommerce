const express = require('express');
const PORT = process.env.PORT || 3001;
const db = require('./db');
const {buildUrl} = require('./helpers')
const routes = require('./routes')
const app = express();

app.use(routes);

app.listen(PORT, ()=>{
    console.log('server is running at @ localhost:' + PORT);
});


// const imInfo = {};

//         const keyname = "full_image"
        
//         if(type !== "full_image"){
//             keyname === "thumbnail";
//             return keyname
//         }
//         const image = imInfo[keyname] = {imID, altText, file, type}
        
//     const target = results[0];
//     const source = results[1];

//         return {
//             ...p,
//             image
//         };