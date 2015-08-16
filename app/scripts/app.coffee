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
  .value 'authorName', 'JumpeiArashi'
  .value 'gistUsername', 'JumpeiArashi'
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
        controllerAs: 'about'
      .otherwise
        redirectTo: '/'

