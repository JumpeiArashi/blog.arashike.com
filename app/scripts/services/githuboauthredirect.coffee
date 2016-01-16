'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.githuboauthredirect
 # @description
 # # githuboauthredirect
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'githubOauthRedirect', [
    '$q'
    '$location'
    '$cookies'
    'OAuth'
    (
      $q
      $location
      $cookies
      oauth
    ) ->
      return () ->
        $cookies.put 'is_github_oauth_logged', true
        oauth.redirect 'github', $location.absUrl()

        deferred = $q.defer()
        deferred.resolve()
        return deferred.promise
  ]
