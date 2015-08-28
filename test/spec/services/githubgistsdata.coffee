'use strict'

describe 'Service: githubGistsData', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  githubGistsDataService = {}
  beforeEach inject (_githubGistsDataService_) ->
    githubGistsDataService = _githubGistsDataService_

  it 'should be exists', ->
    expect !!githubGistsDataService
      .to
      .equal true

  it 'should have gists property', ->
    expect githubGistsDataService
      .to.has.property 'gists'
      .a 'array'
