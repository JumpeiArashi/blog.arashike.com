'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.GithubGistsApi
 # @description
 # # GithubGistsApi
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'GithubGistsApiService', [
    '$http'
    '$q'
    'apiEndpoint'
    'gistUsername'
    'setGithubApiKeyToDefaultAuthorizationHeader'
    (
      $http
      $q
      apiEndpoint
      gistUsername
      setGithubApiKeyToDefaultAuthorizationHeader
    ) ->
      return (githubOauthObject) ->
        setGithubApiKeyToDefaultAuthorizationHeader()

        if githubOauthObject
          fn = ->

            deferred = $q.defer()
            githubOauthObject.get "/users/#{gistUsername}/gists"
              .done (res) ->
                deferred.resolve res

              .fail (err) ->
                deferred.reject err

            return deferred.promise

        else
          fn = ->
            return $http.get("#{apiEndpoint}/users/#{gistUsername}/gists")
              .then (res) ->
                return res.data

              .catch (err) ->
                throw err

        fn()
  ]
