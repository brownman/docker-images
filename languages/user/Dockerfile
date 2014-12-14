FROM ubuntu:precise
ENV USER1 gitlab_ci_runner
RUN 		adduser --disabled-login --gecos 'GitLab CI Runner' gitlab_ci_runner		
USER		gitlab_ci_runner		
ENV 		HOME /home/$USER1

#RUN apt-get install sudo

#  mkdir -p $HOME && \
# ADD $USER1 User
#ENV HOME /home/$USER1
#RUN addgroup --gid=1000 $USER1 && \
#    adduser --system --uid=1000 --home /home/$USER1 --shell /bin/bash $USER1 && \
#    echo "$USER1 ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
#    chown -R $USER1:$USER1 /home && \
#    chown -R $USER1:$USER1 /usr/local

#USER $USER1

# switch priveleges		
#USER root		
