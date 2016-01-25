'use strict'

###*
 # @ngdoc overview
 # @name blogarashikecomApp
 # @description
 # # blogarashikecomApp
 #
 # Main module of the application.
###
angular
  .module 'arashike-blog', [
    'ngAnimate'
    'ngAria'
    'ngCookies'
    'ngMessages'
    'ngResource'
    'ngRoute'
    'ngSanitize'
    'ngTouch'
    'ngMaterial'
  ]
  .value 'apiEndpoint', 'https://api.github.com'
  .value 'gistUrl', 'https://gist.github.com'
  .value 'authorName', 'JumpeiArashi'
  .value 'gistUsername', 'JumpeiArashi'
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/top.html'
        controller: 'TopCtrl'
        controllerAs: 'top'
      .when '/articles/:gistId',
        templateUrl: 'views/articledetail.html'
        controller: 'ArticleDetailCtrl'
        controllerAs: 'articleDetail'
      .otherwise
        redirectTo: '/'
