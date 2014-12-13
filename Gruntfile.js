module.exports = function(grunt) {
  'use strict';

  require('load-grunt-tasks')(grunt);

  grunt.initConfig({

    'bower-install-simple': {
      all: {
        // all defaults
      },
    },

    connect: {
      example: {
        options: {
          base: 'example',
          open: true,
          livereload: true,
        },
      },
    },

    watch: {
      example: {
        files: ['example/**/*'],
        options: {
          livereload: true,
        },
      },
    },

  });

  grunt.registerTask('serve', [
    'bower-install-simple',
    'connect:example',
    'watch:example'
  ]);

  grunt.registerTask('default', ['serve']);

};
