FROM        brownman/ruby-2.1.0
MAINTAINER  brownman "brownman2556@gmail.com"
#WORKDIR 	$HOME
RUN      git clone https://github.com/gitlabhq/gitlab-ci-runner.git runner
# Jan 02, 2014
ENV 		RUNNER_REVISION 08f2260ae87e101f72194a27229b249d126e35fe
RUN     cd runner && git checkout $RUNNER_REVISION 
#&& . $HOME/.profile && 
RUN     bundle install 
RUN     mkdir -p $HOME/.ssh
CMD 	  cd $HOME/runner
#CMD 		. ../.profile && 
RUN ssh-keyscan -H $GITLAB_SERVER_FQDN >> $HOME/.ssh/known_hosts && bundle exec ./bin/setup_and_run

# pgolm/docker-gitlab-ci-runner
#ENV USER1 gitlab_ci_runner
#ENV 		INSTALL_RUBY_VERSION 2.1.0
#ENV 		INSTALL_RUBY_VERSION 1.9.3
# install gitlab-ci-runner
#USER $USER1
#ENV HOME /home/$USER1
