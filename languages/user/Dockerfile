FROM brownman/apt
#  mkdir -p $HOME && \
# ADD $USER1 User
ENV HOME /home
ENV USER1 gitlab_ci_runner

RUN addgroup --gid=1000 $USER1 && \
    adduser --system --uid=1000 --home /home --shell /bin/bash $USER1 && \
    echo "$USER1 ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    chown -R $USER1:$USER1 /home && \
    chown -R $USER1:$USER1 /usr/local

#USER $USER1
