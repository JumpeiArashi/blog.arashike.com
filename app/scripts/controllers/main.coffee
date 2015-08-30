'use strict'

###*
 # @ngdoc function
 # @name blogarashikecomApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the blogarashikecomApp
###
angular.module 'arashike-blog'
  .controller 'MainCtrl', [
    '$scope'
    'GithubUserApiService'
    'GithubGistsApiService'
    'githubGistsDataService'
    'authorName'
    (
      $scope
      GithubUserApiService
      GithubGistsApiService
      githubGistsDataService
      authorName
    ) ->
      $scope.data = githubGistsDataService.gists

      GithubUserApiService(authorName)
        .then (res) ->
          $scope.data.push res.data

      GithubGistsApiService()
        .then (res) ->
          $scope.data = $scope.data.concat res.data
  ]
