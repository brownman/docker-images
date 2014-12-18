[ERR?](https://registry.hub.docker.com/u/brownman/gitlab/builds_history/97800/)
===
[![Build Status](https://semaphoreapp.com/api/v1/projects/650ff752-8e17-4157-8b38-713ae98f2a43/312966/badge.png)](https://semaphoreapp.com/brownman/docker-images)
[![Circle CI](https://circleci.com/gh/brownman/docker-images.svg?style=svg)](https://circleci.com/gh/brownman/docker-images)

- http://www.yegor256.com/2014/08/29/docker-non-root.html


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
