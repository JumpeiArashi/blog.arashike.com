'use strict'

describe 'Service: GithubGistsApi', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  GithubGistsApiService = {}
  $httpBackend = {}
  beforeEach inject (_GithubGistsApiService_, _$httpBackend_) ->
    GithubGistsApiService = _GithubGistsApiService_
    $httpBackend = _$httpBackend_

  afterEach () ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()

  it 'should be function', ->
    expect GithubGistsApiService
      .to.be.a 'function'

  it 'should has description, created_at, updated_at and comments keys as result of http request', ->
    $httpBackend.expectGET("https://api.github.com/users/JumpeiArashi/gists")
    GithubGistsApiService()
      .then (res) ->
        expect res.data[0]
          .to.has.any.keys ['description', 'created_at', 'updated_at', 'comments']
    $httpBackend.flush()
