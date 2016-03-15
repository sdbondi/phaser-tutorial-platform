gulp       = require 'gulp'
imagemin   = require 'gulp-imagemin'
pngquant   = require 'imagemin-pngquant'

conf = require '../gulpconfig'





gulp.task 'assets:images', () ->
  return gulp.src("./#{conf.path.dev.assets}/**/*.{png,jpg}")
    .pipe gulp.dest(conf.path.dest.assets)


gulp.task 'assets:watch', ['assets:images'], () ->
  global.browserSync.reload()
