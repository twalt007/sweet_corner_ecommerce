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


//define server for use below
//https://stackoverflow.com/questions/38062689/how-do-i-get-the-http-server-from-the-express-app
app.listen(PORT, ()=>{
    console.log('server is running at @ localhost:' + PORT);
});

//For stopping the server when stuck between sessions

// https://stackoverflow.com/questions/23258421/how-to-stop-app-that-node-js-express-npm-start/23258503
// Now for the socket.io stuff - NOTE THIS IS A RESTFUL HTTP SERVER
// We are only using socket.io here to respond to the npmStop signal
// To support IPC (Inter Process Communication) AKA RPC (Remote P.C.)
// const io = require('socket.io')(server);
// io.on('connection', (socketServer) => {
//   socketServer.on('npmStop', () => {
//     process.exit(0);
//   });
// });
