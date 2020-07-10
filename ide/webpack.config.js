const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  mode: 'development',
  devtool: 'inline-source-map',
  devServer: {
    contentBase: './dist',
  },
  entry: './js/index.js',
  output: {
    path: path.resolve(__dirname, '/dist'),
    filename: 'app.bundle.js'
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: '!!handlebars-loader!index.html.hbs',
      title: 'Elm Ide',
    }),
  ],
  module: {
    rules: [
      { // handlebars templates
        test: /\.(handlebars|hbs)$/i,
        use: [
          'handlebars-loader',
        ]
      },
    ]
  },
  output: {
    filename: '[name].js',
    path: path.resolve(__dirname, 'dist'),
    publicPath: '/'
  }, 
};
