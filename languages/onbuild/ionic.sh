#!/usr/bin/env bash

source ~/.profile
source ~/.bashrc
set +u
source ~/.nvm/nvm.sh
nvm use 0.10.33
npm install -g

echo stdout to stderr 1>&2
