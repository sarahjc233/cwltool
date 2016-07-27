#!/bin/bash

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then

    case "${TOXENV}" in
        py27)
            source py27/bin/activate;
            ;;
    esac
fi
cwltool/schemas/run_test.sh;