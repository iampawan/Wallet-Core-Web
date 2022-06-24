const path = require('path');

module.exports = {
    entry: './src/loader.js',
    output: {
        filename: 'loader.js',
        path: path.join(process.cwd(), '/assets'),
        asyncChunks: false
    },
    resolve: {
        fallback: {
            "path": false,
            "buffer": false,
            "fs": false

        }
    }
}