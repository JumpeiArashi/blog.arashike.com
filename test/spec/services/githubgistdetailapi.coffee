'use strict'

describe 'Service: githubGistDetailApi', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  githubGistDetailApi = {}
  beforeEach inject (_githubGistDetailApi_) ->
    githubGistDetailApi = _githubGistDetailApi_

  it 'should exist', ->
    expect !!githubGistDetailApi
      .to.be.equal true
