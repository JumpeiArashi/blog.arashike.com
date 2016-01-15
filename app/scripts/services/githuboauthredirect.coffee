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
    '$location'
    'sharedDataService'
    (
      $location
      sharedData
    ) ->
      return () ->
        console.log 'fired'
        OAuth.redirect 'github', {cache: true}, $location.absUrl()
  ]
