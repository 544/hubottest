gulp = require 'gulp';

# test tools
mocha = require 'gulp-mocha'
watch = require 'gulp-watch'

# testタスク作成
gulp.task 'test', ->
   gulp.src(['scripts/*.coffee', 'test/*.coffee']) 
    .pipe mocha {reporter: 'spec'}

# watchタスク作成
gulp.task 'watch', ->
  gulp.watch(['scripts/*.coffee', 'test/*.coffee'], ['test'])
