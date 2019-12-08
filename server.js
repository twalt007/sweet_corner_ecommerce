const express = require('express');
const PORT = process.env.PORT || 3001;
const routes = require('./routes')
const path = require('path');

const app = express();

app.use(express.static(path.resolve(__dirname, 'client','dist')));

app.use(routes);

app.get('*', (req,res)=>{
    res.sendFile(path.resolve(__dirname, 'client','dist','index.html'));
})

app.listen(PORT, ()=>{
    console.log('server is running at @ localhost:' + PORT);
});


