assets = "src/assets"

module.exports =
  path:
    db_backup: "database"
    dev:
      assets: "#{assets}"
      css:    "#{assets}/css"
      js:     "#{assets}/js"
      img:    "#{assets}/img"
      fnt:    "#{assets}/fnt"
      scss:   "#{assets}/css/scss"
      coffee: "#{assets}/js/coffee"
    prod:
      assets: "#{assets}/public"
      css:    "#{assets}/public/css"
      fnt:    "#{assets}/public/fnt"
      img:    "#{assets}/public/img"
      js:     "#{assets}/public/js"

  plumber:
    errorHandler: false

  revManifest:
    path: "#{assets}/rev-manifest.json"
    opts:
      merge: true

  revReplace:
    opts:
      "replaceInExtensions": [
        ".js"
        ".css"
      ]
