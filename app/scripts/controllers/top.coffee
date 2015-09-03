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
    'sharedDataService'
    'authorName'
    (
      $scope
      $q
      GithubUserApiService
      GithubGistsApiService
      sharedDataService
      authorName
    ) ->
      $scope.articles = []
      $scope.isLoading = true

      $scope.$watch(
        () ->
          return sharedDataService.author
        (newVal, oldVal, scope) ->
          scope.articles[0] = newVal
      )

      $scope.$watchCollection(
        () ->
          return sharedDataService.gists
        (newCollection, oldCollection, scope) ->
          scope.articles = scope.articles.concat newCollection
      )

      githubPromises = $q.all [
        GithubUserApiService(authorName)
          .then (res) ->
            sharedDataService.author = res.data

        GithubGistsApiService()
          .then (res) ->
            sharedDataService.gists = sharedDataService.gists.concat res.data
      ]
      githubPromises
        .then () ->
          $scope.isLoading = false
  ]
