FROM brownman/nvm
RUN git clone --depth=1 https://github.com/brownman/install_config_test 
RUN cd install_config_test && chmod u+x travis.sh && ./travis.sh mean
ONBUILD RUN env
ONBUILD RUN history
ONBUILD RUN apt-get install toilet
ONBUILD RUN toilet --gay 'mean.io'
