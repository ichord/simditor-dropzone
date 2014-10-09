module.exports = (grunt) ->

  grunt.initConfig

    pkg: grunt.file.readJSON 'package.json'

    coffee:
      select:
        files:
          'lib/<%= pkg.name %>.js': 'src/dropzone.coffee'

    watch:
      scripts:
        files: ['src/*.coffee']
        tasks: ['coffee']

    connect:
      uses_defaults: {}


  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-connect'

  grunt.registerTask 'default', ['coffee', 'connect', 'watch']
