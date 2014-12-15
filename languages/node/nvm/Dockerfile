FROM brownman/gitlab
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>
#USER $USER1


RUN sudo apt-get update && \
    sudo apt-get install -y build-essential libssl-dev libmysqlclient-dev && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl --location https://raw.github.com/creationix/nvm/master/install.sh | sh && \
    sudo /bin/bash -c "echo \"[[ -s \$HOME/.nvm/nvm.sh ]] && . \$HOME/.nvm/nvm.sh\" >> /etc/profile.d/npm.sh" && \
    echo "[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh" >> $HOME/.bashrc

ENV PATH $HOME/.nvm/bin:$PATH

######################## install node ver 0.10
ENV NODE_VERSION 0.10
RUN /bin/bash -l -c "nvm install $NODE_VERSION && nvm use $NODE_VERSION && rm -rf $HOME/.nvm/bin && ln -s \$NVM_BIN $HOME/.nvm/bin"
