const db = require('../../../db');
const { buildUrl } = require('../../../helpers')

module.exports = async (req,res) =>{
    try{
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
    }
    catch(error){
        console.log(error)
        next(error);
    }
}

