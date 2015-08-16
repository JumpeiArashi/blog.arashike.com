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
    'authorName'
    ($scope, GithubUserApiService, authorName) ->
      githubUserApiParams =
        username: authorName
      GithubUserApiService(githubUserApiParams)
        .then (res) ->
          $scope.author = res
  ]
