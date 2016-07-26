#!/bin/bash

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then

    case "${TOXENV}" in
        py27)
            brew install python;
            sudo pip install virtualenv;
            virtualenv py27;
            source py27/bin/activate;
            ;;
    esac
fi