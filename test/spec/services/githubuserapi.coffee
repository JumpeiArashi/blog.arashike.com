'use strict'

describe 'Service: GithubUserApi', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  GithubUserApiService = {}
  beforeEach inject (_GithubUserApiService_) ->
    GithubUserApiService = _GithubUserApiService_

  it 'should do something', ->
    expect !!GithubUserApiService
      .to
      .equal true
