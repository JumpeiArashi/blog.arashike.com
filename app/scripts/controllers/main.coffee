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
    'gistUsername'
    (
      $scope
      GithubUserApiService
      GithubGistsApiService
      authorName
      gistUsername
    ) ->
      githubUserApiParams =
        username: authorName
      GithubUserApiService(githubUserApiParams)
        .then (res) ->
          $scope.author = res

      githubGistsApiParams =
        username: gistUsername
      GithubGistsApiService(githubGistsApiParams)
        .then (res) ->
          $scope.gists = res
  ]
