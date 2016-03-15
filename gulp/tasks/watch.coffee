gulp         = require 'gulp'
watch        = require 'gulp-watch'

conf = require '../gulpconfig'

gulp.task 'watch', ['html', 'assets:images', 'css', 'scripts', 'browser-sync'], () ->
  gulp.watch "#{conf.path.dev.scss}/**/*.scss", ['css:watch']
  gulp.watch ["#{conf.path.dev.js}/**/!(*.bundle).js", "#{conf.path.dev.js}/**/*.jsx"], ['scripts:lint', 'scripts:watch']
  gulp.watch ["#{conf.path.dev.base}/**/*.html"], ['html:watch']
  gulp.watch ["#{conf.path.dev.assets}/**/*"], ['assets:watch']
