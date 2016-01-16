'use strict'

describe 'Service: githubOauthCallback', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  githubOauthCallback = {}
  beforeEach inject (_githubOauthCallback_) ->
    githubOauthCallback = _githubOauthCallback_

  it 'should do something', ->
    expect(!!githubOauthCallback).to.be.equal true
