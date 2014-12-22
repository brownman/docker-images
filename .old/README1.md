

steps:
-----
- 1>>
- on restarting container
- assertEqual: pwd = to gitlab_ci_runner

- 2>>
- rbenv should be available on login


target
---
- https://github.com/pgolm/docker-gitlab-ci-runner/blob/master/Dockerfile
- https://github.com/gitlabhq/gitlab-ci-runner/blob/master/Dockerfile

orig
---
- https://github.com/jolicode/docker-images
