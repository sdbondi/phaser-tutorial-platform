gulp         = require "gulp"

gulp.task 'browser-sync', () ->
  global.browserSync.init {
    injectchanges: true
    open: false
    notify: false
    # tunnel: true
  }

gulp.task 'bs-reload', () ->
  global.browserSync.reload()
