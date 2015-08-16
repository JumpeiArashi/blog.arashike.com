'use strict'

describe 'Service: GithubGistsApi', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  GithubGistsApi = {}
  beforeEach inject (_GithubGistsApi_) ->
    GithubGistsApi = _GithubGistsApi_

  it 'should do something', ->
    expect(!!GithubGistsApi).toBe true
