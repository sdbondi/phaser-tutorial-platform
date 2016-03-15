gulp         = require "gulp"

gulp.task 'browser-sync', () ->
  global.browserSync.init {
    injectchanges: true
    open: false
    notify: false
    server:
      baseDir: './dist'
  }

gulp.task 'bs-reload', () ->
  global.browserSync.reload()
