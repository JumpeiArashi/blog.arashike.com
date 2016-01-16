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
    '$cookies'
    'OAuth'
    'authorName'
    'GithubUserApiService'
    'GithubGistsApiService'
    'githubOauthRedirect'
    'githubOauthCallback'
    (
      $q
      $cookies
      oauth
      authorName
      githubUser
      githubGists
      githubOauthRedirect
      githubOauthCallback
    ) ->
      return () ->

        if !oauth.isRedirect('github') and $cookies.get 'is_github_oauth_logged'
          githubOauthRedirect()

        else
          githubOauthCallback
            .then (githubOauthObject) ->

              articles = []
              promises = $q.all [
                githubUser(authorName, githubOauthObject)
                githubGists(githubOauthObject)
              ]
              promises
                .then (userAndGistsData) ->
                  articles[0] = userAndGistsData[0]
                  articles = articles.concat userAndGistsData[1]
                  return articles

                .catch (err) ->
                  throw err
  ]
