'use strict'

###*
 # @ngdoc directive
 # @name arashike-blog.directive:wintersArticle
 # @description
 # # wintersArticle
###
angular.module 'arashike-blog'
  .directive 'wintersArticle', [
    () ->
      restrict: 'E'
      template: """
        <article layout="column" layout-align="center center">
          <div class="frame-mint">
            <div class="frame-inner">
            {{wintersArticleElement.description}}
            </div>
          </div>
          <img class="article-icon" ng-src="{{wintersArticleElement.image}}">
        </article>
      """
      link: (scope, element, attrs) ->
        prefix = 'images/winters/objects/'
        objects = [
          'bad-buffalo-back.gif'
          'bad-buffalo-front.gif'
          'cave-boy-front.gif'
          'gruff-goat-back.gif'
          'gruff-goat-front.gif'
          'hyper-spinning-robo.gif'
          'snow-wood-student.gif'
          'tessie-watcher-front.gif'
          'zombie-processor-front.gif'
        ]

        image = "#{prefix}#{objects[Math.floor(Math.random() * objects.length)]}"
        description = attrs.description
        if description.length > 30
          description = "#{description[0..24]}..."

        else if !description.length
          description = "No title..."

        scope.wintersArticleElement =
          image: image
          description: description
  ]
