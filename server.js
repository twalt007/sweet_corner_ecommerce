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


