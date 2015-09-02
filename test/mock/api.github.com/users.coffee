'use strict'

angular.module 'arashike-blog'
  .run [
    '$httpBackend'
    'apiEndpoint'
    (
      $httpBackend
      apiEndpoint
    ) ->
      $httpBackend.whenGET("#{apiEndpoint}/users/JumpeiArashi")
        .respond(
          200,
          {
            "login": "JumpeiArashi",
            "id": 1898689,
            "avatar_url": "https://avatars.githubusercontent.com/u/1898689?v=3",
            "gravatar_id": "",
            "url": "https://api.github.com/users/JumpeiArashi",
            "html_url": "https://github.com/JumpeiArashi",
            "followers_url": "https://api.github.com/users/JumpeiArashi/followers",
            "following_url": "https://api.github.com/users/JumpeiArashi/following{/other_user}",
            "gists_url": "https://api.github.com/users/JumpeiArashi/gists{/gist_id}",
            "starred_url": "https://api.github.com/users/JumpeiArashi/starred{/owner}{/repo}",
            "subscriptions_url": "https://api.github.com/users/JumpeiArashi/subscriptions",
            "organizations_url": "https://api.github.com/users/JumpeiArashi/orgs",
            "repos_url": "https://api.github.com/users/JumpeiArashi/repos",
            "events_url": "https://api.github.com/users/JumpeiArashi/events{/privacy}",
            "received_events_url": "https://api.github.com/users/JumpeiArashi/received_events",
            "type": "User",
            "site_admin": false,
            "name": "Jumpei Arashi",
            "company": "Japan",
            "blog": "wiki.arashike.com",
            "location": "Tokyo",
            "email": "jumpei.arashi@arashike.com",
            "hireable": null,
            "bio": null,
            "public_repos": 22,
            "public_gists": 13,
            "followers": 3,
            "following": 2,
            "created_at": "2012-06-27T13:46:39Z",
            "updated_at": "2015-08-27T07:57:26Z"
          }
        )
  ]