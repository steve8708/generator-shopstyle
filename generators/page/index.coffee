util = require 'util'
yeoman = require 'yeoman-generator'

module.exports = yeoman.generators.NamedBase.extend
  init: ->
    @slugName = @_.slugify @name
    @className = @_.classify @name

  files: ->
    @template 'controller.coffee', "client/app/modules/pages/#{@slugName}.coffee"
