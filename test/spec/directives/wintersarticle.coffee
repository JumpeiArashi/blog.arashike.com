'use strict'

describe 'Directive: wintersArticle', ->

  # load the directive's module
  beforeEach module 'arashike-blog'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should not be elements undefined', inject ($compile) ->
    element = angular.element '<winters-article></winters-article>'
    expect(!!element)
      .to
      .equal true
