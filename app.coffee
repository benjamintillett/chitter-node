app = require('express')()
server = require('http').Server app 
path = require 'path'
fs = require 'fs'


bodyParser = require 'body-parser'
app.use bodyParser.urlencoded({extended: false})
app.use(require('express-ejs-layouts'))
app.use(require('express').static('public'))
app.set 'views', path.join(__dirname,"./views")
app.set 'view engine', 'ejs'



app.get '/', (request, response) ->
  response.render 'index'

app.post '/users', (request, response) ->
  response.render 'user_index'


	

module.exports = server

