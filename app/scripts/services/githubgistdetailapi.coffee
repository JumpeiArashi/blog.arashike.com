'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.githubGistDetailApiService
 # @description
 # # githubGistDetailApiService
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'githubGistDetailApi', [
    '$http'
    'apiEndpoint'
    'setGithubApiKeyToDefaultAuthorizationHeader'
    (
      $http
      apiEndpoint
      setGithubApiKeyToDefaultAuthorizationHeader
    ) ->
      result = {}
      setGithubApiKeyToDefaultAuthorizationHeader()
      return (gistId) ->
        $http.get "#{apiEndpoint}/gists/#{gistId}"
          .then (res) ->
            result = res.data
            fileKeys = Object.keys result.files
            fileContent = result.files[fileKeys[0]].content

            req =
              method: 'POST'
              url: "#{apiEndpoint}/markdown"
              data:
                text: fileContent

            return $http req

          .then (res) ->
            result.htmlContent = res.data
            res.data = result
            return res

          .catch (err) ->
            throw err
  ]
