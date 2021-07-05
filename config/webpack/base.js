const { webpackConfig } = require('@rails/webpacker')
const { merge } = require('webpack-merge')

const webpack = require('webpack')

module.exports = merge(
  webpackConfig,
  {
    plugins: [
      new webpack.ProvidePlugin({
        $: "jquery/src/jquery",
        jQuery: "jquery/src/jquery",
        Popper: ['popper.js', 'default']
      })
    ]
  }
)
