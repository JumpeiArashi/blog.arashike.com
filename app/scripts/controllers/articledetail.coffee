'use strict'

###*
 # @ngdoc function
 # @name arashike-blog.controller:ArticleDetailCtrl
 # @description
 # # ArticleDetailCtrl
 # Controller of the arashike-blog
###
angular.module 'arashike-blog'
  .controller 'ArticleDetailCtrl', [
    '$scope'
    '$routeParams'
    'githubGistDetailApi'
    (
      $scope
      $routeParams
      githubGistDetailApi
    ) ->
      $scope.gistId = $routeParams.gistId
      $scope.gist = undefined
      $scope.isLoading = true
      $scope.error = undefined

      githubGistDetailApi($scope.gistId)
        .then (res) ->
          $scope.gist = res.data

        .catch (err) ->
          $scope.error = err

        .finally ->
          $scope.isLoading = false

  ]
