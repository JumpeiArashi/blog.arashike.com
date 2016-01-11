'use strict'

describe 'Service: setGithubApiKeyToDefaultAuthorizationHeader', ->

  # load the service's module
  beforeEach () ->
    module 'arashike-blog'

  # instantiate service
  service = {}
  cookies = {}
  http = {}

  beforeEach ->
    inject (_setGithubApiKeyToDefaultAuthorizationHeader_, _$cookies_, _$http_) ->
      service = _setGithubApiKeyToDefaultAuthorizationHeader_
      cookies = _$cookies_
      http = _$http_

  afterEach ->
    http.defaults.headers.common.Authorization = undefined

  context 'when cookie has no github_api_key value', ->

    it "doesn't set default Authorization header", ->

      service()
      expect http.defaults.headers.common.Authorization
        .to.be.equal undefined

  context 'when cookie has github_api_key value', ->

    token = 'TEST_TOKEN'
    beforeEach ->
      cookies.put 'github_api_key', token

    afterEach ->
      cookies.remove 'github_api_key'

    it "sets \"#{token}\" to default Authorization token", ->

      service()
      expect http.defaults.headers.common.Authorization
        .to.be.equal "token #{token}"

