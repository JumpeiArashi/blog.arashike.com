'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.githubOauthCallback
 # @description
 # # githubOauthCallback
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'githubOauthCallback', [
    '$q'
    'OAuth'
    (
      $q
      oauth
    ) ->
      deferred = $q.defer()

      if oauth.isRedirect()
        oauth.callback 'github'
          .done (githubOauthObject) ->
            deferred.resolve(githubOauthObject)

          .fail (err) ->
            deferred.reject err

      else
        deferred.resolve()

      return deferred.promise
  ]
