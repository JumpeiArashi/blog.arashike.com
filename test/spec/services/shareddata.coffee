'use strict'

describe 'Service: sharedData', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  sharedData = {}
  beforeEach inject (_sharedDataService_) ->
    sharedData = _sharedDataService_

  it 'should be exists', ->
    expect !!sharedData
      .to
      .equal true

  it 'should have gists property', ->
    expect sharedData
      .to.has.property 'gists'
      .a 'array'

  it 'should have author property', ->
    expect sharedData
      .to.has.property 'author'
      .a 'object'
