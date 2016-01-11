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
    '$cookies'
    (
      $cookies
    ) ->
      return (githubApiKey) ->
        $cookies.put 'github_api_key', githubApiKey
  ]
