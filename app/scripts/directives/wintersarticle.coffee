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
          <a ng-href="#/articles/{{wintersArticleElement.id}}">
            <div class="frame-mint">
              <div class="frame-inner">
              {{wintersArticleElement.description}}
                <div layout="row" layout-align="end">
                  <div class="created-at">{{wintersArticleElement.createdAt | date:'MMM d, yyyy'}}</div>
                </div>
              </div>
            </div>
          </a>
          <a ng-href="articles/{{wintersArticleElement.id}}">
            <img class="article-icon" ng-src="{{wintersArticleElement.image}}">
          </a>
        </article>
      """
      link: (scope, element, attrs) ->
        prefix = 'images/winters/objects/'
        objects = [
          'cave-boy-front.gif'
          'gruff-goat-back.gif'
          'gruff-goat-front.gif'
          'mad-duck-left.gif'
          'mighty-bear-back.gif'
          'mighty-bear-front.gif'
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
          id: gist.id
          image: image
          description: description
          createdAt: gist.created_at
  ]
