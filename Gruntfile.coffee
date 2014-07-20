module.exports = (grunt)->
  grunt.initConfig
    pkg: '<json:package.json>'
    jade:
      all:
        files:
          'build/newTab.html': 'src/newTab.jade'
    stylus:
      all:
        files:
          'build/newTab.css': 'src/newTab.styl'
    copy:
      manifest:
        files:
          'build/manifest.json': 'src/manifest.json'
    watch:
      files: ['src/*.jade', 'src/*.styl']
      tasks: ['jade', 'stylus']

  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['jade', 'stylus', 'copy']
