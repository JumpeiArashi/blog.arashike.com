'use strict'

describe 'Service: getGistDetail', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  getGistDetail = {}
  beforeEach inject (_getGistDetail_) ->
    getGistDetail = _getGistDetail_

  it 'should do something', ->
    expect(!!getGistDetail).toBe true
