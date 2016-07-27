#!/bin/bash

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then

    case "${TOXENV}" in
        py27)
            source py27/bin/activate;
            ;;
    esac
fi
cd cwltool/schemas
sudo ./run_test.sh RUNNER=../../cwltool.py