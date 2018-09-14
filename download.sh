#!/usr/bin/env bash
#First parameter: git username
#Second parameter: -t -> do not use tags

trap exit ERR
echo $2
if [ "$2" != "-t" ] ; then
	echo "USE TAGS"
  TAG_PIPEMANAGER="855ed1333b7ee9c4c40875e8fbbc48b29433f62c"
  TAG_GAMMAPIPECOMMON="3a17dd3bec79efaad2d0e87d3b84cb7e79cd6002"
  TAG_CTAGAMMAPIPECOMMON="fb749fb2862b15ae85909d5a20fdac9e019560fa"
  TAG_CTOOLSINT="e6338b0496ad749385bfba0bc6aeb96ecce327f8"
  TAG_SCIGUI="ce0743b310be8f63174b830fdcbf294af5b804ff"
fi

echo "--------------"
git clone https://$1@github.com/rta-pipe/pipeline_manager.git
cd pipeline_manager
if [ "$2" != "-t" ]; then
	git checkout $TAG_PIPEMANAGER
else
	echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/rta-pipe/GammaPipeCommon.git
cd GammaPipeCommon
if [ "$2" != "-t" ]; then
        git checkout $TAG_GAMMAPIPECOMMON
else
        echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/cta-rta/CTAGammaPipeCommon.git
cd CTAGammaPipeCommon
if [ "$2" != "-t" ]; then
        git checkout $TAG_CTAGAMMAPIPECOMMON
else
        echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/cta-rta/ctoolsint.git
cd ctoolsint
if [ "$2" != "-t" ]; then
        git checkout $TAG_CTOOLSINT
else
        echo "Use master version"
fi
cd ..


echo "--------------"
git clone https://$1@github.com/cta-rta/ScientificGUI.git
cd ScientificGUI
if [ "$2" != "-t" ]; then
        git checkout $TAG_SCIGUI
else
        echo "Use master version"
fi
cd ..
