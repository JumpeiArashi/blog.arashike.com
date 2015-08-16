'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.GithubGistsApi
 # @description
 # # GithubGistsApi
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'GithubGistsApiService', ($http, apiEndpoint) ->
    return ({
      username
    }) ->
      return $http.get("#{apiEndpoint}/users/#{username}/gists")
        .then (res) ->
          return res
        .then (res) ->
          return res
