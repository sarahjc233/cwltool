#!/bin/bash

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then

    case "${TOXENV}" in
        py27)
            brew upgrade;
            brew install pyenv-virtualenv;
            virtualenv py27;
            source py27/bin/activate;
            ;;
    esac
fi