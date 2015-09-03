'use strict'

describe 'Directive: loading', ->

  # load the directive's module
  beforeEach module 'arashike-blog'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should not be undefined', inject ($compile) ->
    element = angular.element '<loading></loading>'
    element = $compile(element) scope
    expect !!element
      .to.be.equal true
