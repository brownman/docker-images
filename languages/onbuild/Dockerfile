FROM brownman/nvm

#ADD . $HOME
#CMD   source $HOME/.bashrc

#RUN git clone --depth=1 https://github.com/brownman/install_config_test 
#RUN cd install_config_test && chmod u+x travis.sh && ./travis.sh mean
#RUN sudo chmod 755 $HOME/mean.sh && bash -c $HOME/mean.sh 
#ONBUILD RUN env
#ONBUILD RUN history
#ONBUILD RUN apt-get install toilet
#ONBUILD RUN toilet --gay 'mean.io'
RUN cd myApp
RUN grunt test
#ONBUILD RUN cd myApp
#ONBUILD RUN grunt test
