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

  context 'without arguments', ->

    it 'has description, created_at, updated_at and comments', ->
      $httpBackend.expectGET("https://api.github.com/users/JumpeiArashi-blog/gists")
      GithubGistsApiService()
        .then (res) ->
          expect res.data[0]
            .to.has.any.keys ['description', 'created_at', 'updated_at', 'comments']

      $httpBackend.flush()
