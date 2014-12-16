FROM        brownman/rbenv
#ruby-2.1.0
MAINTAINER  brownman "brownman2556@gmail.com"

ENV      dir_runner "$HOME/runner"


RUN      git clone --depth=1 https://github.com/gitlabhq/gitlab-ci-runner.git $dir_runner
RUN     . $HOME/.bashrc &&  cd $dir_runner && bundle install 
RUN     mkdir -p $HOME/.ssh



CMD   . $HOME/.bashrc
CMD 	ssh-keyscan -H $GITLAB_SERVER_FQDN >> $HOME/.ssh/known_hosts && ( bundle exec $dir_runner/bin/setup_and_run ) || ( echo 1>&2 ERR;  )
