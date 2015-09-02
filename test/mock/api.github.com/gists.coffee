'use strict'

angular.module 'arashike-blog'
  .run [
    '$httpBackend'
    'apiEndpoint'
    (
      $httpBackend
      apiEndpoint
    ) ->
      $httpBackend.whenGET("#{apiEndpoint}/users/JumpeiArashi/gists")
        .respond(
          200,
          [
            {
              "url": "https://api.github.com/gists/146669bf0e0c0145774f",
              "forks_url": "https://api.github.com/gists/146669bf0e0c0145774f/forks",
              "commits_url": "https://api.github.com/gists/146669bf0e0c0145774f/commits",
              "id": "146669bf0e0c0145774f",
              "git_pull_url": "https://gist.github.com/146669bf0e0c0145774f.git",
              "git_push_url": "https://gist.github.com/146669bf0e0c0145774f.git",
              "html_url": "https://gist.github.com/146669bf0e0c0145774f",
              "files": {
                "README.md": {
                  "filename": "README.md",
                  "type": "text/plain",
                  "language": "Markdown",
                  "raw_url": "https://gist.githubusercontent.com/JumpeiArashi/146669bf0e0c0145774f/raw/baf0dcc6a45de89d6b1304ed0e141e2f5ecd19e0/README.md",
                  "size": 281
                },
                "slack.py": {
                  "filename": "slack.py",
                  "type": "application/x-python",
                  "language": "Python",
                  "raw_url": "https://gist.githubusercontent.com/JumpeiArashi/146669bf0e0c0145774f/raw/2257092f72a227fe50093eb96c023c5117909c99/slack.py",
                  "size": 1683
                }
              },
              "public": true,
              "created_at": "2015-06-02T11:17:58Z",
              "updated_at": "2015-08-29T14:22:21Z",
              "description": "Notification to slack channel. This script use only python2.7.X native library.",
              "comments": 0,
              "user": null,
              "comments_url": "https://api.github.com/gists/146669bf0e0c0145774f/comments",
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
              }
            }
          ]
        )
  ]