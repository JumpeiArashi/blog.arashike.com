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
    'apiEndpoint'
    'gistUsername'
    'setGithubApiKeyToDefaultAuthorizationHeader'
    (
      $http
      apiEndpoint
      gistUsername
      setGithubApiKeyToDefaultAuthorizationHeader
    ) ->
      setGithubApiKeyToDefaultAuthorizationHeader()
      return ->
        return $http.get("#{apiEndpoint}/users/#{gistUsername}/gists")
          .then (res) ->
            return res

          .catch (err) ->
            throw err
  ]
