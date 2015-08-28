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
    'authorName'
    (
      $scope
      GithubUserApiService
      GithubGistsApiService
      authorName
      gistUsername
    ) ->
      $scope.data = []

      GithubUserApiService(authorName)
        .then (res) ->
          $scope.data.push res.data

      GithubGistsApiService()
        .then (res) ->
          $scope.data = $scope.data.concat res.data
  ]
