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
    '$q'
    '$http'
    'apiEndpoint'
    'setGithubApiKeyToDefaultAuthorizationHeader'
    (
      $q
      $http
      apiEndpoint
      setGithubApiKeyToDefaultAuthorizationHeader
    ) ->
      return (gistId, githubOauthObject) ->
        result = {}
        setGithubApiKeyToDefaultAuthorizationHeader()

        if githubOauthObject
          deferred = $q.defer()
          githubOauthObject.get "/gists/#{gistId}"
            .done (res) ->
              result = res
              fileKeys = Object.keys res.files
              fileContent = res.files[fileKeys[0]].content

              params =
                data:
                  JSON.stringify {text: fileContent}

              githubOauthObject.post '/markdown', params
                .done (res) ->
                  result.htmlContent = res
                  deferred.resolve result

                .fail (err) ->
                  console.log 'error'
                  deferred.reject {data: err.responseJSON}

            .fail (err) ->
              deferred.reject err

          return deferred.promise

        else
          $http.get "#{apiEndpoint}/gists/#{gistId}"
            .then (res) ->
              result = res.data
              fileKeys = Object.keys result.files
              fileContent = result.files[fileKeys[0]].content
              console.log fileContent

              req =
                method: 'POST'
                url: "#{apiEndpoint}/markdown"
                data:
                  text: fileContent

              return $http req

            .then (res) ->
              result.htmlContent = res.data
              return result

            .catch (err) ->
              throw err
  ]
