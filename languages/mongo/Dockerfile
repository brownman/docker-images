FROM brownman/nvm

ADD . $HOME
CMD   source $HOME/.bashrc

RUN sudo chmod 755 $HOME/mongo.sh && bash -c $HOME/mongo.sh 
