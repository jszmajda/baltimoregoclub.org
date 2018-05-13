js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
sass         = require 'node-sass'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.s[ac]ss')
  ]

  #stylus:
  #  use: [axis(), rupture(), autoprefixer()]
  #  sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
