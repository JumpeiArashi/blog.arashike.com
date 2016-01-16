'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.getGistDetail
 # @description
 # # getGistDetail
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'getGistDetail', [
    '$q'
    '$cookies'
    'OAuth'
    'githubGistDetailApi'
    'githubOauthRedirect'
    'githubOauthCallback'
    (
      $q
      $cookies
      oauth
      githubGistDetail
      githubOauthRedirect
      githubOauthCallback
    ) ->
      return (gistId) ->

        if !oauth.isRedirect('github') and $cookies.get 'is_github_oauth_logged'
          githubOauthRedirect()

        else
          githubOauthCallback
            .then (githubOauthObject) ->

              githubGistDetail(gistId, githubOauthObject)
  ]
