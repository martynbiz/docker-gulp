const { watch, series } = require('gulp');

function clean(cb) {
  // body omitted
  cb();
}

function javascript(cb) {
  // body omitted
  cb();
}

function css(cb) {
  // body omitted
  cb();
}

exports.default = function() {

  const watchOptions = {
    usePolling: true,
  }

  // You can use a single task
  watch('src/*.scss', watchOptions, css); 
  // Or a composed task
  watch('src/*.js', watchOptions, series(clean, javascript));
};