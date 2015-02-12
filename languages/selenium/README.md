 
[ERR?](https://registry.hub.docker.com/u/brownman/mean/builds_history/115284/)
===
[![Circle CI](https://circleci.com/gh/brownman/docker-images.svg?style=svg)](https://circleci.com/gh/brownman/docker-images)

This project use [docker_playground](https://github.com/brownman/docker_playground) to wrap/test its docker containers


TODO:
----
- run docker for selenium and link it to the gitlab-ci-runner docker



```bash
docker run selenium/standalone-chrome:2.44.0 &

curl http://localhost:4444/wd/hub/status

# {"sessionId":null,"status":0,"state":"success","value":{"build":{"version":"2.44.0","revision":"76d78cf","time":"2014-10-23 20:02:37"},"os":{"name":"Linux","arch":"amd64","version":"3.5.0-58-generic"},"java":{"version":"1.7.0_65"}},"class":"org.openqa.selenium.remote.Response","hCode":1342539104}
```
