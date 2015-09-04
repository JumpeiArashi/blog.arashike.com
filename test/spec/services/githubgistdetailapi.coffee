'use strict'

describe 'Service: githubGistDetailApi', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  githubGistDetailApi = {}
  $httpBackend = {}
  beforeEach inject (_githubGistDetailApi_, _$httpBackend_) ->
    githubGistDetailApi = _githubGistDetailApi_
    $httpBackend = _$httpBackend_

  afterEach () ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()

  it 'should exist', ->
    expect !!githubGistDetailApi
      .to.be.equal true

  it 'should has file content in result of http request', ->
    $httpBackend.expectGET 'https://api.github.com/gists/12345'
    $httpBackend.expectPOST(
      'https://api.github.com/markdown/raw'
      text: "# Test Content"
    )
    githubGistDetailApi(12345)
      .then (res) ->
        expect res.data
          .to.has.any.keys ['files', 'comments', 'created_at', 'updated_at']
        expect res.data.htmlContent
          .to.be.match /Test\ Content/
    $httpBackend.flush()
