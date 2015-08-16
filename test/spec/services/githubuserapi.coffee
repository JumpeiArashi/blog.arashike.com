'use strict'

describe 'Service: GithubUserApi', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  GithubUserApi = {}
  beforeEach inject (_GithubUserApi_) ->
    GithubUserApi = _GithubUserApi_

  it 'should do something', ->
    expect(!!GithubUserApi).toBe true
