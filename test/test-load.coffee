assert = require 'assert'

describe 'shopstyle-frontend generator', ->
  it 'can be imported without blowing up', ->
    app = require '../app'
    assert.equal app, undefined
