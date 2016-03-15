gulp         = require 'gulp'

conf = require '../gulpconfig'





#*------------------------------------*\
#     $HTML
#*------------------------------------*/
gulp.task 'html', () ->
  gulp.src(["#{conf.path.dev.base}/**/*.html"])
    .pipe gulp.dest(conf.path.dest.base)





#*------------------------------------*\
#     $HTML WATCH
#*------------------------------------*/
gulp.task 'html:watch', ['html'], () ->
  global.browserSync.reload('*.html')
