#!/bin/bash
NODE_VERSION=$1

export NVM_DIR="$HOME/.nvm"
source $NVM_DIR/nvm.sh

nvm install $NODE_VERSION
