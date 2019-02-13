'use strict';

const path = require('path');

module.exports = {
  target: 'web',
  context: path.join(__dirname, 'src'),
  entry: './Index',
  output: {
    path: path.join(__dirname, 'dist'),
    filename: './index.js'
  },
  resolve: {
    extensions: ['.tsx', '.ts', '.js']
  },
  module: {
    rules: [{
      test: /\.tsx?$/,
      exclude: /node_modules/,
      loader: 'babel-loader',
    }]
  }
};
