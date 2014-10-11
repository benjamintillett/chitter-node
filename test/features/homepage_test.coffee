Browser = require 'zombie'
fs = require 'fs'
chai = require 'chai'
expect = chai.expect
server = require '../../app'

describe 'home page', ->
	browser = null

	before ->
		@server = server.listen(3000)
		browser = new Browser({ site: 'http://localhost:3000' })

	before (done) ->
		browser.visit('/', done)

	it 'displays a welcome message', ->
		expect(browser.text('h1')).to.eql('Chitter Node')

	it 'displays a sign up form', ->
		  browser.
    	  fill("email", "zombie@underworld.dead").
    	  fill("password", "eat-the-living").
    	  pressButton("Sign Me Up!").then ->
    	  	expect(browser.text("h1")).to.eql('XXXXXXX')

