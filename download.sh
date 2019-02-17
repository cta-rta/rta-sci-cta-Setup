#!/usr/bin/env bash
#First parameter: git username
#Second parameter: -t -> do not use tags

trap exit ERR
echo $2
if [ "$2" != "-t" ] ; then
   echo "USE TAGS"
  TAG_PIPEMANAGER="v1.0.3"
  TAG_GAMMAPIPECOMMON="v1.0.1"
  TAG_CTAGAMMAPIPECOMMON="v1.0.2"
  TAG_CTOOLSINT="v1.0.1"
  TAG_SCIGUI="v1.0.1"
fi

echo "--------------"
git clone git@github.com:ASTRO-EDU/pipeline_manager.git
cd pipeline_manager
if [ "$2" != "-t" ]; then
	git checkout $TAG_PIPEMANAGER
else
	echo "Use master version"
fi
cd ..

echo "--------------"
git clone git@github.com:ASTRO-EDU/GammaPipeCommon.git
cd GammaPipeCommon
if [ "$2" != "-t" ]; then
        git checkout $TAG_GAMMAPIPECOMMON
else
        echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://github.com/cta-rta/CTAGammaPipeCommon.git
cd CTAGammaPipeCommon
if [ "$2" != "-t" ]; then
        git checkout $TAG_CTAGAMMAPIPECOMMON
else
        echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://github.com/cta-rta/ctoolsint.git
cd ctoolsint
if [ "$2" != "-t" ]; then
        git checkout $TAG_CTOOLSINT
else
        echo "Use master version"
fi
cd ..


echo "--------------"
git clone git@github.com:ASTRO-EDU/ScientificGUI.git
cd ScientificGUI
if [ "$2" != "-t" ]; then
        git checkout $TAG_SCIGUI
else
        echo "Use master version"
fi
cd ..
