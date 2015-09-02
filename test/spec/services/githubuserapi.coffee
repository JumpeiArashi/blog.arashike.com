'use strict'

describe 'Service: GithubUserApiService', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  GithubUserApiService = {}
  $httpBackend = {}
  beforeEach inject (_GithubUserApiService_, _$httpBackend_) ->
    GithubUserApiService = _GithubUserApiService_
    $httpBackend = _$httpBackend_

  afterEach () ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()

  it 'should exist', ->
    expect GithubUserApiService
      .to.be.a 'function'

  it 'should be same username and res.data.login', () ->
    $httpBackend.expectGET('https://api.github.com/users/JumpeiArashi')
    GithubUserApiService('JumpeiArashi')
      .then (res) ->
        expect res.data.login
          .to.be.equal 'JumpeiArashi'
    $httpBackend.flush()
