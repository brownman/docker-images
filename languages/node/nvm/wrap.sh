#https://docs.docker.com/reference/commandline/cli/
  docker build -t docker_current .
  docker run -i docker_current bash < test.sh
