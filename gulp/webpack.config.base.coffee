HappyPack = require 'happypack'
path      = require 'path'

phaserModule = path.join(__dirname, '../node_modules/phaser/')
phaser       = path.join(phaserModule, 'build/custom/phaser-split.js')
pixi         = path.join(phaserModule, 'build/custom/pixi.js')
p2           = path.join(phaserModule, 'build/custom/p2.js')

conf      = require('./gulpconfig')

module.exports =
  output:
    path: path.join(__dirname, '../', conf.path.dest.js)
    filename: './[name].bundle.js'

  module:
    loaders: [
      {
        test: /\.jsx?$/
        exclude: /node_modules/
        loader: 'happypack/loader'
      },
      { test: /pixi\.js/, loader: "expose?PIXI" },
      { test: /phaser\.js/, loader: "expose?Phaser" },
      { test: /p2\.js/, loader: "expose?p2" },
    ]

  devtool: 'source-map'

  resolve:
    alias: { phaser: phaser, pixi: pixi, p2: p2 }

  plugins: [
    new HappyPack({
      loaders: [{
        path: path.resolve(__dirname, '../node_modules/babel-loader/index.js'),
        query: '?presets[]=es2015,presets[]=react,presets[]=stage-0'
      }]
    })
  ]
