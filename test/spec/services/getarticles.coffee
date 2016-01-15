'use strict'

describe 'Service: getArticles', ->

  # load the service's module
  beforeEach module 'arashike-blog'

  # instantiate service
  getArticles = {}
  beforeEach inject (_getArticles_) ->
    getArticles = _getArticles_

  context 'When github API is succeeded', ->

    it 'gets user information and gist contents', ->
      expect !!getArticles
        .to.be.equal true
