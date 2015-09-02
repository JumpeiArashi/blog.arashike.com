'use strict'

describe 'Controller: TopCtrl', ->

  # load the controller's module
  beforeEach module 'arashike-blog'

  TopCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TopCtrl = $controller 'TopCtrl', {
      $scope: scope
    }

  it 'should not be undefined', ->
    expect !!TopCtrl
      .to
      .equal true
