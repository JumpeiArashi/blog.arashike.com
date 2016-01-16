'use strict'

###*
 # @ngdoc directive
 # @name arashike-blog.directive:error
 # @description
 # # error
###
angular.module 'arashike-blog'
  .directive 'error', ->
    restrict: 'E'
    template: """
      <div layout='row' layout-align='center center'>
        <div class='error'>
          <div class='frame-strawberry'>
            <div class='frame-inner'>
                <div layout='row'>
                  <div>
                    <img ng-src='images/geppuu.gif'>
                  </div>
                  <div clsss='message' layout='column'>
                    <h3 class='title'>Backend API Error</h3>
                    <div class='text'>{{error.data.message}}</div>
                    <div class='text'>This error will be resolved by inputting Github API Key. Can you input??</div>
                    <form class='github-personal-token' ng-submit='injectGithubApiKey(githubApiKey)'>
                      <input class='github-api-key' ng-model='githubApiKey' type='text' placeholder='Github API Token'>
                      <input class='submit' type='submit' value='Submit!!'>
                    </form>
                  </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    """
    link: (scope, element, attrs) ->
