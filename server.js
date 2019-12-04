const express = require('express');
const PORT = process.env.PORT || 3001;
const db = require('./db');
const {buildUrl} = require('./helpers')

const app = express();

app.get('/api/products', async (req,res) => {

    const[results] = await db.query(`
        SELECT p.pid AS id, caption, cost, p.name, i.pid AS tnID, altText, file, type
        FROM products AS p 
        JOIN images AS i 
        ON i.productId=p.id
        WHERE i.type='thumbnail'
        `);

        const products = results.map(product => {
            const { tnID, altText, file, type, ...p } = product;
            return {
                ...p,
                thumbnail: {
                    id: tnID,
                    altText,
                    file,
                    type,
                    url: buildUrl(req,type,file)
                }
            }

        });

    res.send({ products });
});
///two objects
///destructure at the end
///if check based upon type
//assign the keyame inside the iamges

app.get('/api/products/:product_id', async(req,res) => {
    const {product_id} = req.params;

    const [results] = await db.execute(`
        SELECT p.pid AS id, caption, cost, description, p.name, i.pid AS imID, altText, file, type
        FROM products AS p 
        JOIN images AS i
        ON i.productId=p.id
        WHERE p.pid=?
    `, [product_id]);

    const single = results.map(result => {
        const {imID, altText, file, type, ...p} = result
        
        const image = {};
        let keyname = "image";
        if(type === "thumbnail"){
            keyname = "thumbnail"
        };
        image[keyname] = {
            id: imID,
            altText,
            file,
            type,
            url: buildUrl(req,type,file)
        };
        
        return {
            ...p,
            ...image,
            }
    })
   
    const combined = Object.assign(single[0],single[1]);

    res.send({
        ...combined        
    });
});

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