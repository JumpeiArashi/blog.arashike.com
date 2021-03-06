'use strict'

describe 'Controller: TopCtrl', ->

  # load the controller's module
  beforeEach module 'arashike-blog'

  TopCtrl = {}
  scope = {}
  $httpBackend = {}

  # Initialize the controller and a mock scope
  beforeEach inject (
    $controller
    $rootScope
    _$httpBackend_
  ) ->
    scope = $rootScope.$new()
    $httpBackend = _$httpBackend_
    TopCtrl = $controller(
      'TopCtrl'
      {
        $scope: scope
      }
    )

  it 'should not be undefined', ->
    expect !!TopCtrl
      .to
      .equal true

  it 'should store user and gists object to $scope.articles', ->
    $httpBackend.flush()

    expect scope.articles
      .to.be.length 2
