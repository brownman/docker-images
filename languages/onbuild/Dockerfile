FROM brownman/nvm

ADD . $HOME
#RUN git clone --depth=1 https://github.com/brownman/install_config_test 
#RUN cd install_config_test && chmod u+x travis.sh && ./travis.sh mean
RUN chmod +x $HOME/mean.sh && $HOME/mean.sh 
#ONBUILD RUN env
#ONBUILD RUN history
ONBUILD RUN apt-get install toilet
ONBUILD RUN toilet --gay 'mean.io'
