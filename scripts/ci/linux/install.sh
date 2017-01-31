#!/usr/bin/env bash
set -e

export OF_ROOT=~/openFrameworks
export OF_ADDONS=$OF_ROOT/addons

ADDONS="armadillu/ofxHistoryPlot armadillu/ofxFontStash"

cd $OF_ADDONS

for ADDON in $ADDONS
do
  git clone --depth=1 --branch=$OF_BRANCH https://github.com/$ADDON.git
done

cd -