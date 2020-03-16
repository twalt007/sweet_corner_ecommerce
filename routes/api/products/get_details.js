const db = require('../../../db');
const { buildUrl } = require('../../../helpers');

module.exports = async(req,res) => {
    try{
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
    } catch(error){
        console.log("error: ", error);
        next(error);
    }
};



