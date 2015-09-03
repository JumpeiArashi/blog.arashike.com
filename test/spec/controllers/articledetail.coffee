'use strict'

describe 'Controller: ArticleDetailCtrl', ->

  # load the controller's module
  beforeEach module 'arashike-blog'

  ArticleDetailCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ArticleDetailCtrl = $controller 'ArticleDetailCtrl', {
      # place here mocked dependencies
    }

  it 'should exist', ->
    expect !!ArticleDetailCtrl
      .to.be.equal true
