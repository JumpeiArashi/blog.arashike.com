'use strict'

describe 'Service: injectgithubapikey', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  injectGithubApiKey = {}
  cookies = {}
  beforeEach inject (_injectGithubApiKey_, _$cookies_) ->
    injectGithubApiKey = _injectGithubApiKey_
    cookies = _$cookies_

  afterEach ->
    cookies.remove 'github_api_key'

  it 'puts api key to github_api_key key of Cookie', ->
    apiKey = 'TEST_TOKEN'
    injectGithubApiKey apiKey
    expect cookies.get 'github_api_key'
      .to.be.equal apiKey
