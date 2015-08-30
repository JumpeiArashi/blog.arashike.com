'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.githubshareddata
 # @description
 # # githubshareddata
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'sharedDataService', ->
    gists = []

    return {
      gists: gists
    }
