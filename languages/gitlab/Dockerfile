FROM        brownman/rbenv
#ruby-2.1.0
MAINTAINER  brownman "brownman2556@gmail.com"


ENV      HOME /home/gitlab_ci_runner
ENV      dir_runner "$HOME/runner"
ADD  . $HOME

RUN mkdir $HOME/runner_not
RUN     git clone --depth=1 https://github.com/gitlabhq/gitlab-ci-runner.git runner
#"$dir_runner" 
#RUN     . $HOME/.bashrc && 
RUN     . $HOME/.profile && cd $dir_runner && bundle install 
RUN     mkdir -p $HOME/.ssh


RUN   sudo chmod +x $HOME/cmd.sh
#CMD   . $HOME/.bashrc
CMD 	[ "/bin/bash" , "-c" , "$HOME/cmd.sh" ]
