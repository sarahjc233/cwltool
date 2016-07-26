#!/bin/bash

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then

    case "${TOXENV}" in
        py27)
            brew upgrade;
            brew install pyenv-virtualenv;
            eval "$(pyenv init -)";
            eval "$(pyenv virtualenv-init -)";
            pyenv virtualenv 2.7.10 py27;
            pyenv activate py27;
            ;;
    esac
else
  pip install 'setuptools>=18.5';
fi