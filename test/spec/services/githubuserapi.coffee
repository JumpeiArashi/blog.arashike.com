'use strict'

describe 'Service: GithubUserApiService', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  GithubUserApiService = {}
  beforeEach inject (_GithubUserApiService_) ->
    GithubUserApiService = _GithubUserApiService_

  it 'should exist', ->
    expect GithubUserApiService
      .to.be.a 'function'
