'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.injectgithubapikey
 # @description
 # # injectgithubapikey
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'injectGithubApiKey', [
    '$window'
    '$cookies'
    (
      $route
      $cookies
    ) ->
      return (githubApiKey) ->
        $cookies.put 'github_api_key', githubApiKey
        $route.location.reload()
  ]
