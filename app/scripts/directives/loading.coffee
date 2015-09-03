'use strict'

###*
 # @ngdoc directive
 # @name arashike-blog.directive:loading
 # @description
 # # loading
###
angular.module 'arashike-blog'
  .directive 'loading', ->
    restrict: 'E'
    template: """
      <div layout="row" layout-align="center center">
        <div class="loading">
          <div class='frame-mint'>
            <div class='frame-inner'>
              <div layout="row">
                <img ng-src="images/electro-eyes.gif">
                <div class="text">Loading...</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    """
    link: (scope, element, attrs) ->
