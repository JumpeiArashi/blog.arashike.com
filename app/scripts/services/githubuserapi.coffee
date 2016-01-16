'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.GithubUser
 # @description
 # # GithubUser
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'GithubUserApiService', [
    '$http'
    '$q'
    'apiEndpoint'
    'sharedData'
    'setGithubApiKeyToDefaultAuthorizationHeader'
    (
      $http
      $q
      apiEndpoint
      sharedData
      setGithubApiKeyToDefaultAuthorizationHeader
    ) ->
      return (username, githubOauthObject) ->
        setGithubApiKeyToDefaultAuthorizationHeader()

        if githubOauthObject
          fn = (username) ->

            deferred = $q.defer()
            githubOauthObject.get "/users/#{username}"
              .done (res) ->
                deferred.resolve res

              .fail (err) ->
                deferred.reject err

            return deferred.promise

        else
          fn = (username) ->
            return $http.get("#{apiEndpoint}/users/#{username}")
              .then (res) ->
                return res.data

              .catch (err) ->
                throw err

        fn(username)
  ]
