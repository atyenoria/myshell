var gulp = require('gulp');
var browserify = require('browserify');
var source = require('vinyl-source-stream');

gulp.task('browserify', function () {


// jekyll build
gulp.task('jekyll',function(){
  exec('jekyll serve -w');
});

// ファイル監視
gulp.task('watch', function(){
    gulp.watch('./_source/sass/*.scss',['compass']);//scssに変更あったらtaskのcompassが走る
});

gulp.task('default', ['jekyll','watch']);

