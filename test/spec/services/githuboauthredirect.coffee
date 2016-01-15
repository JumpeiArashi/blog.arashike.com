'use strict'

describe 'Service: githubOauthRedirect', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  githubOauthRedirect = {}
  beforeEach inject (_githubOauthRedirect_) ->
    githubOauthRedirect = _githubOauthRedirect_

  it 'should do something', ->
    expect(!!githubOauthRedirect).toBe true
