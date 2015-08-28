'use strict'

describe 'Service: githubGistsData', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  githubGistsData = {}
  beforeEach inject (_githubGistsData_) ->
    githubGistsData = _githubGistsData_

  it 'should do something', ->
    expect !!githubGistsData
      .to
      .equal true
