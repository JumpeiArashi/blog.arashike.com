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
                    <form class='github-personal-token'>
                      <input ng-model='githubApiKey'>
                      <span class='submit' ng-click='injectGithubApiKey(githubApiKey)'>Submit!!</span>
                      <div class='submit' ng-click='githubOauthRedirect()'>Github oauth login</div>
                    </form>
                  </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    """
    link: (scope, element, attrs) ->
