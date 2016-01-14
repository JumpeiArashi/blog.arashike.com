'use strict'

describe 'Directive: error', ->

  # load the directive's module
  beforeEach module 'arashike-blog'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'makes hidden element visible', inject ($compile) ->
    element = angular.element '<error></error>'
    element = $compile(element) scope
    expect !!element
      .to.be.equal true
