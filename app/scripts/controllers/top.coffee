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
    'getArticles'
    'injectGithubApiKey'
    'githubOauthRedirect'
    (
      $scope
      getArticles
      injectGithubApiKey
      githubOauthRedirect
    ) ->
      $scope.articles = []
      $scope.isLoading = true
      $scope.error = undefined
      $scope.injectGithubApiKey = injectGithubApiKey
      $scope.githubOauthRedirect = githubOauthRedirect

      getArticles()
        .then (articles) ->
          $scope.articles = articles
          if articles
            $scope.isLoading = false

        .catch (err) ->
          $scope.error = err
          $scope.isLoading = false

  ]
