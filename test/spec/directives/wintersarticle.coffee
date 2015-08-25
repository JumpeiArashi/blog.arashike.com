'use strict'

describe 'Directive: wintersArticle', ->

  # load the directive's module
  beforeEach module 'arashike-blog'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<winters-article></winters-article>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the wintersArticle directive'
