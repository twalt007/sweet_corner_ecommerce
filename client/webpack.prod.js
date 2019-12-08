const webpack = require('webpack');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');
const merge = require('webpack-merge');
const common = require('./webpack.common');

module.exports = merge(common, {
    entry: [
        'core-js/stable',
        'regenerator-runtime/runtime',
        './index.js'
    ],
    mode: 'production',
    module: {
        rules: [
            {
                test: /\.jsx?$/,
                use: ['babel-loader']
            }
        ]
    },
    plugins: [
        new webpack.DefinePlugin({
            'process.env': {
                NODE_ENV: JSON.stringify('production')
            }
        }),
        new UglifyJsPlugin({
            sourceMap: true
        })
    ]
});
