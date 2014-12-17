#export dir_runner="$HOME/runner"
ssh-keyscan -H $GITLAB_SERVER_FQDN >> $HOME/.ssh/known_hosts
bundle exec $dir_runner/bin/setup
#setup_and_run
