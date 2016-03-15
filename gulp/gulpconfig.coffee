source = "src"
assets = "#{source}/assets"
dest = "dist"

module.exports =
  path:
    dev:
      base:   source
      assets: "#{source}/assets"
      css:    "#{source}/css"
      js:     "#{source}/js"
      img:    "#{source}/img"
      fnt:    "#{source}/fnt"
      scss:   "#{source}/css/scss"
      coffee: "#{source}/js/coffee"
    dest:
      base: dest
      js: "#{dest}/js"
      assets: "#{dest}/assets"

  plumber:
    errorHandler: false

  revManifest:
    path: "#{assets}/rev-manifest.json"
    opts:
      merge: true

  revReplace:
    opts:
      replaceInExtensions: [
        ".js"
        ".css"
      ]
