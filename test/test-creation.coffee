path = require 'path'
helpers = require('yeoman-generator').test

describe 'shopstyle-frontend generator', ->
  beforeEach (done) ->
    helpers.testDirectory path.join(__dirname, 'temp'), (err) =>
      return done err if err
      @app = helpers.createGenerator 'shopstyle-frontend:app', ['../../app']
      done()

  it 'creates expected files', (done) ->
    expected = [
      # add files you expect to exist here.
      '.jshintrc'
      '.editorconfig'
    ]

    helpers.mockPrompt @app,
      someOption: true

    @app.options['skip-install'] = true
    @app.run {}, ->
      helpers.assertFile expected
      done()
