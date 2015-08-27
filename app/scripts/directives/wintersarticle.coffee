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
              <div layout="row" layout-align="end">
                <div class="created-at">{{wintersArticleElement.createdAt | date:'MMM d, yyyy'}}</div>
              </div>
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

        gist = JSON.parse attrs.gist
        description = gist.description

        if !description
          description = "No title..."
        else if description.length > 30
          description = "#{description[0..24]}..."

        scope.wintersArticleElement =
          image: image
          description: description
          createdAt: gist.created_at
  ]