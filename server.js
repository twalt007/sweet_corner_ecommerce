const express = require('express');
const PORT = process.env.PORT || 3001;
const ApiError = require('./helpers/api_error');
global.ApiError = ApiError;
const routes = require('./routes')
const path = require('path');
const defaultErrorHandler = require('./middleware/default_error_handler');


const app = express();

app.use(express.urlencoded({extended: false}));
app.use(express.json());
app.use(express.static(path.resolve(__dirname, 'client','dist')));

app.use(routes);

app.get('*', (req,res)=>{
    res.sendFile(path.resolve(__dirname, 'client','dist','index.html'));
})

app.use(defaultErrorHandler);

app.listen(PORT, ()=>{
    console.log('server is running at @ localhost:' + PORT);
});