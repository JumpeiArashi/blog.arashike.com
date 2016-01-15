'use strict'

###*
 # @ngdoc service
 # @name arashike-blog.getArticles
 # @description
 # # getArticles
 # Service in the arashike-blog.
###
angular.module 'arashike-blog'
  .service 'getArticles', [
    '$q'
    'authorName'
    'GithubUserApiService'
    'GithubGistsApiService'
    (
      $q
      authorName
      githubUser
      githubGists
    ) ->
      return () ->
        articles = []
        promises = $q.all [
          githubUser(authorName)
          githubGists()
        ]
        promises
          .then (userAndGistsData) ->
            articles[0] = userAndGistsData[0].data
            articles = articles.concat userAndGistsData[1].data
            return articles
  ]
