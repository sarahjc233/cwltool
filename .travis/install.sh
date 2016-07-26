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

 voila deltapsi
    --output /media/tyaoi4/10CA2BA3CA2B8456/MAJIQ_testRUN/MAJIQ_results/MacroGen/Delta_PSI_Analysis/Delta_PSI_VOILA
    -splice-graphs1 /media/tyaoi4/10CA2BA3CA2B8456/MAJIQ_testRUN/MAJIQ_results/MacroGen/CT_27_accepted_hits.splicegraph
    -splice-graphs2 /media/tyaoi4/10CA2BA3CA2B8456/MAJIQ_testRUN/MAJIQ_results/MacroGen/BPA_39_accepted_hits.splicegraph
    /media/tyaoi4/10CA2BA3CA2B8456/MAJIQ_testRUN/MAJIQ_results/MacroGen/Delta_PSI_Analysis/CT_27_BPA_39.deltapsi_quantify.pickle