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
    'GithubUserApiService'
    'GithubGistsApiService'
    'sharedDataService'
    'authorName'
    (
      $scope
      GithubUserApiService
      GithubGistsApiService
      sharedDataService
      authorName
    ) ->
      $scope.articles = []

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

      GithubUserApiService(authorName)
        .then (res) ->
          sharedDataService.author = res.data

      GithubGistsApiService()
        .then (res) ->
          sharedDataService.gists = sharedDataService.gists.concat res.data
  ]
