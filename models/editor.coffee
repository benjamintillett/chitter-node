fs = require 'fs'

class Editor

	constructor: (@directory) ->

	createFile: (fileName, callback) ->
		console.log fileName
		console.log @directory
		fs.writeFile @directory + "/" + fileName, ''
		callback()




module.exports = Editor