'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.setgithubapikeytodefaultheader
 # @description
 # # setgithubapikeytodefaultheader
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'setGithubApiKeyToDefaultAuthorizationHeader', [
    '$http'
    '$cookies'
    (
      $http
      $cookies
    ) ->
      return () ->
        githubApiKey = $cookies.get 'github_api_key'
        if githubApiKey
          $http.defaults.headers.common.Authorization = "token #{githubApiKey}"
  ]
