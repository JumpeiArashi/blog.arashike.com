'use strict'

###*
 # @ngdoc function
 # @name blogarashikecomApp.controller:TopCtrl
 # @description
 # # TopCtrl
 # Controller of the blogarashikecomApp
###
angular.module 'arashike-blog'
  .controller 'TopCtrl', [
    '$scope'
    '$q'
    'GithubUserApiService'
    'GithubGistsApiService'
    'authorName'
    'injectGithubApiKey'
    (
      $scope
      $q
      GithubUserApiService
      GithubGistsApiService
      authorName
      injectGithubApiKey
    ) ->
      $scope.articles = []
      $scope.isLoading = true
      $scope.error = undefined
      $scope.injectGithubApiKey = injectGithubApiKey

      githubPromises = $q.all [
        GithubUserApiService(authorName)
        GithubGistsApiService()
      ]
      githubPromises
        .then (results) ->
          $scope.articles[0] = results[0].data
          $scope.articles = $scope.articles.concat results[1].data

        .catch (err) ->
          $scope.error = err

        .finally ->
          $scope.isLoading = false
  ]
