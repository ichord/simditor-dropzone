module.exports = (grunt) ->

  grunt.initConfig

    pkg: grunt.file.readJSON 'package.json'

    sass:
      select:
        options:
          style: 'expanded'
          bundleExec: true
        files:
          'lib/simditor-dragdrop.css': 'src/dragdrop.scss'

    coffee:
      select:
        files:
          'lib/simditor-dragdrop.js': 'src/dragdrop.coffee'

    watch:
      styles:
        files: ['src/*.scss']
        tasks: ['sass']
      scripts:
        files: ['src/*.coffee']
        tasks: ['coffee']

  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['coffee', 'watch']
