#!/usr/bin/env bash
exec 1>&2

source ~/.profile
source ~/.bashrc
set +u
source ~/.nvm/nvm.sh
nvm use 0.10.33
npm install -g
