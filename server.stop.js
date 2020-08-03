const io = require('socket.io-client');
const PORT = process.env.PORT || 3001;
const socketClient = io.connect(`http://localhost:${PORT}`); // Specify port if your express server is not using default port 80

socketClient.on('connect', () => {
  socketClient.emit('npmStop');
  setTimeout(() => {
    process.exit(0);
  }, 1000);
});