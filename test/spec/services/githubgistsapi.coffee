'use strict'

describe 'Service: GithubGistsApi', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  GithubGistsApiService = {}
  beforeEach inject (_GithubGistsApiService_) ->
    GithubGistsApiService = _GithubGistsApiService_

  it 'should do something', ->
    expect !!GithubGistsApiService
      .to
      .equal true
