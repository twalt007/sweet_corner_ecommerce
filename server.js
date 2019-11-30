const express = require('express');
const PORT = process.env.PORT || 3001;

const app = express();

app.get('/test', (req,res) => {
    res.send({
        message: 'this is a rest endpoint. if you see this, your get request at /test is working'
    });
});

app.listen(PORT, ()=>{
    console.log('server is running at @ localhost:' + PORT);
})