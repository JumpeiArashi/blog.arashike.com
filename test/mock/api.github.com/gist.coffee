'use strict'

angular.module 'arashike-blog'
  .run [
    '$httpBackend'
    'apiEndpoint'
    (
      $httpBackend
    ) ->
      $httpBackend.whenGET(/https:\/\/api\.github\.com\/gists\/\d+/)
        .respond(
          200,
          {
            "url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2",
            "forks_url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/forks",
            "commits_url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/commits",
            "id": "5a4e4b8542b32cd7e7a2",
            "git_pull_url": "https://gist.github.com/5a4e4b8542b32cd7e7a2.git",
            "git_push_url": "https://gist.github.com/5a4e4b8542b32cd7e7a2.git",
            "html_url": "https://gist.github.com/5a4e4b8542b32cd7e7a2",
            "files": {
              "bokunoKangaetaSaikyouSoubiShu.md": {
                "filename": "bokunoKangaetaSaikyouSoubiShu.md",
                "type": "text/plain",
                "language": "Markdown",
                "raw_url": "https://gist.githubusercontent.com/JumpeiArashi/5a4e4b8542b32cd7e7a2/raw/ce838ac0aa98e83401f022b06d24f1eb9d779d79/bokunoKangaetaSaikyouSoubiShu.md",
                "size": 5716,
                "truncated": false,
                "content": "# Test Content"
              }
            },
            "public": true,
            "created_at": "2015-02-05T14:55:47Z",
            "updated_at": "2015-08-29T14:14:49Z",
            "description": "MH4G",
            "comments": 1,
            "user": null,
            "comments_url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/comments",
            "owner": {
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
              "site_admin": false
            },
            "forks": [
     
            ],
            "history": [
              {
                "user": {
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
                  "site_admin": false
                },
                "version": "807013dd3191e1e4f335609ddd382f2c43ec5550",
                "committed_at": "2015-05-04T05:26:11Z",
                "change_status": {
                  "total": 18,
                  "additions": 9,
                  "deletions": 9
                },
                "url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/807013dd3191e1e4f335609ddd382f2c43ec5550"
              },
              {
                "user": {
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
                  "site_admin": false
                },
                "version": "64568d2a671c92d91fc527715c76839ed3137f1a",
                "committed_at": "2015-04-01T17:35:01Z",
                "change_status": {
                  "total": 75,
                  "additions": 75,
                  "deletions": 0
                },
                "url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/64568d2a671c92d91fc527715c76839ed3137f1a"
              },
              {
                "user": {
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
                  "site_admin": false
                },
                "version": "761b144f18f8c9cc50b37c2428bde58bb01eaeb8",
                "committed_at": "2015-02-23T06:27:05Z",
                "change_status": {
                  "total": 4,
                  "additions": 4,
                  "deletions": 0
                },
                "url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/761b144f18f8c9cc50b37c2428bde58bb01eaeb8"
              },
              {
                "user": {
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
                  "site_admin": false
                },
                "version": "8b90ececa33408df4fae1cd5025625dd91a2ba82",
                "committed_at": "2015-02-22T12:41:28Z",
                "change_status": {
                  "total": 19,
                  "additions": 19,
                  "deletions": 0
                },
                "url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/8b90ececa33408df4fae1cd5025625dd91a2ba82"
              },
              {
                "user": {
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
                  "site_admin": false
                },
                "version": "a6ff9a0735ae3be7bce932874d3c9661b10dd284",
                "committed_at": "2015-02-16T01:29:54Z",
                "change_status": {
                  "total": 72,
                  "additions": 65,
                  "deletions": 7
                },
                "url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/a6ff9a0735ae3be7bce932874d3c9661b10dd284"
              },
              {
                "user": {
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
                  "site_admin": false
                },
                "version": "a056117a2ff9e207651b7290f051beb9953421e9",
                "committed_at": "2015-02-06T05:37:17Z",
                "change_status": {
                  "total": 24,
                  "additions": 23,
                  "deletions": 1
                },
                "url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/a056117a2ff9e207651b7290f051beb9953421e9"
              },
              {
                "user": {
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
                  "site_admin": false
                },
                "version": "032c5ca91d40f2ff40989fe75f1b846ebf4c6cdf",
                "committed_at": "2015-02-06T05:37:06Z",
                "change_status": {
                  "total": 15,
                  "additions": 15,
                  "deletions": 0
                },
                "url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/032c5ca91d40f2ff40989fe75f1b846ebf4c6cdf"
              },
              {
                "user": {
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
                  "site_admin": false
                },
                "version": "e7516a6eb336a5e95cf14f35e5b5771a1c0d28f1",
                "committed_at": "2015-02-06T03:21:32Z",
                "change_status": {
                  "total": 42,
                  "additions": 21,
                  "deletions": 21
                },
                "url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/e7516a6eb336a5e95cf14f35e5b5771a1c0d28f1"
              },
              {
                "user": {
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
                  "site_admin": false
                },
                "version": "a1c249f50afd7662c7ee29af0ff291911dfc2508",
                "committed_at": "2015-02-05T14:55:47Z",
                "change_status": {
                  "total": 21,
                  "additions": 21,
                  "deletions": 0
                },
                "url": "https://api.github.com/gists/5a4e4b8542b32cd7e7a2/a1c249f50afd7662c7ee29af0ff291911dfc2508"
              }
            ]
          }
        )
  ]
