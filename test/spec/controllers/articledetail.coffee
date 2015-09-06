'use strict'

describe 'Controller: ArticleDetailCtrl', ->

  # load the controller's module
  beforeEach module 'arashike-blog'

  ArticleDetailCtrl = {}
  scope = {}
  $httpBackend = {}

  beforeEach inject (
    $controller
    $rootScope
    _$httpBackend_
  ) ->
    scope = $rootScope.$new()
    $httpBackend = _$httpBackend_
    ArticleDetailCtrl = $controller(
      'ArticleDetailCtrl'
      {
        $scope: scope
        $routeParams:
          gistId: 12345
      }
    )

  it 'should exist', ->
    expect !!ArticleDetailCtrl
      .to.be.equal true

  it 'should have gist content as article detail', ->
    $httpBackend.flush()

    expect scope.gist
      .to.has.any.keys ['created_at', 'updated_at', 'htmlContent']
