app = require('express')()
server = require('http').Server app 
path = require 'path'
fs = require 'fs'


Sequelize = require("sequelize")
sequelize = new Sequelize("chitter_node", "ben", process.env.POSTGRES_PASS,
  dialect: 'postgres'
  port: 5432 
)
sequelize.authenticate().complete (err) ->
  unless not err
    console.log "Unable to connect to the database:", err
  else
    console.log "Connection has been established successfully."
  return





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

