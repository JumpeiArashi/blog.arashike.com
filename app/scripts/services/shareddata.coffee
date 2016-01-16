'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.sharedData
 # @description
 # # sharedData
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'sharedData', ->
    data = {}

    return {
      get: (key) ->
        return data[key]

      set: (key, value) ->
        data[key] = value
    }
