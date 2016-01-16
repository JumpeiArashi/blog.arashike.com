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
    'getGistDetail'
    'injectGithubApiKey'
    'githubOauthRedirect'
    (
      $scope
      $routeParams
      getGistDetail
      injectGithubApiKey
      githubOauthRedirect
    ) ->
      $scope.gistId = $routeParams.gistId
      $scope.gist = undefined
      $scope.isLoading = true
      $scope.error = undefined
      $scope.injectGithubApiKey = injectGithubApiKey
      $scope.githubOauthRedirect = githubOauthRedirect

      getGistDetail($scope.gistId)
        .then (res) ->
          $scope.gist = res
          if res
            $scope.isLoading = false

        .catch (err) ->
          $scope.error = err
          $scope.isLoading = false

  ]
