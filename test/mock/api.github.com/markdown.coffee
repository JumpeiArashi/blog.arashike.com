'use strict'

angular.module 'arashike-blog'
  .run [
    '$httpBackend'
    'apiEndpoint'
    (
      $httpBackend
      apiEndpoint
    ) ->
      $httpBackend.whenPOST(
        "#{apiEndpoint}/markdown"
        {text: "# Test Content"}
      )
        .respond(
          200
          '<h1><a id="user-content-github-markdown-api" class="anchor" href="#github-markdown-api" aria-hidden="true"><span class="octicon octicon-link"></span></a>Test Content</h1>'
        )
  ]
