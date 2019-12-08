const { resolve } = require('path');
const webpack = require('webpack');
const WebpackDevServer = require('webpack-dev-server');
const config = require('./webpack.dev');
const npm_config = require('./package.json');
const PORT = process.env.PORT || 3000;

const server = new WebpackDevServer(webpack(config), {
    contentBase: resolve(__dirname, 'dist'),
    publicPath: '/',
    hot: false,
    historyApiFallback: true,
    quiet: false,
    noInfo: false,
    proxy: npm_config.proxy,
    stats: {
        assets: false,
        colors: true,
        version: false,
        hash: false,
        timings: true,
        children: false,
        modules: false,
        chunks: false,
        chunkModules: false
    }
})

server.listen(PORT).on('error', err => {
    console.log('\n\x1b[37m%s\x1b[33m%s\x1b[37m%s\x1b[36m%s\x1b[33m%s\x1b[0m\n\n', '========', ' REACT DEV SERVER LISTEN ERROR ','========','\nYou probably already have a server running on PORT:', PORT);

    server.close();
});
