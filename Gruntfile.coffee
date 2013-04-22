module.exports = (grunt)->
	grunt.initConfig
		pkg: "<json:package.json>"
		jade:
			all:
				files:
					"newTab.html": "newTab.jade"
		stylus:
			all:
				files:
					"newTab.css": "newTab.styl"
		watch:
			files: ["*.jade", "*.styl"]
			tasks: ["jade", "stylus"]

	grunt.loadNpmTasks "grunt-contrib-jade"
	grunt.loadNpmTasks "grunt-contrib-stylus"
	grunt.loadNpmTasks "grunt-contrib-watch"
