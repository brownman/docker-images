#!/usr/bin/env bash
exec 1>&2

source ~/.profile
source ~/.bashrc
set +u
source ~/.nvm/nvm.sh
nvm use 0.10.33

git clone --depth 1 git@github.com:brownman/ChkBook.git
cd ChkBook

npm install -g
npm link
