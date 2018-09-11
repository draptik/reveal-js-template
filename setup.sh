#!/bin/sh

## Current directory
## http://stackoverflow.com/a/246128
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

DEFAULT_THEME='light-theme'
THEME=$DEFAULT_THEME

if [ $1 == '--dark' ]; then THEME='dark-theme'; fi

## Get reveal.js
REVEAL_VERSION=3.6.0
REVEAL_SRC=https://github.com/hakimel/reveal.js/archive/${REVEAL_VERSION}.tar.gz
wget ${REVEAL_SRC}

## extract
tar xvzf ${REVEAL_VERSION}.tar.gz

## rename folder
mv reveal.js-${REVEAL_VERSION} slides

## remove downloaded file
rm ${REVEAL_VERSION}.tar.gz

## enable new git from scratch (but keep the .gitignore file)
rm -rf .git

## cleanup (optional)
rm -rf \
    $CURRENTDIR/slides/test \
    $CURRENTDIR/slides/CONTRIBUTING.md \
    $CURRENTDIR/slides/demo* \
    $CURRENTDIR/slides/.travis.yml \
    $CURRENTDIR/screenshots

## inject tweaks
cp -rf $CURRENTDIR/tweaks/* $CURRENTDIR/slides/

## rename index.html and remove unused theme files
if [ "$THEME" == 'dark-theme' ]
then 
    mv $CURRENTDIR/slides/index-dark.html $CURRENTDIR/slides/index.html
    rm -f $CURRENTDIR/slides/index-light.html \
        $CURRENTDIR/slides/css/custom-light.css
elif [ "$THEME" == 'light-theme' ]
then 
    mv $CURRENTDIR/slides/index-light.html $CURRENTDIR/slides/index.html
    rm -f $CURRENTDIR/slides/index-dark.html \
        $CURRENTDIR/slides/css/theme/dark.css \
        $CURRENTDIR/slides/css/custom-dark.css
else exit -1
fi

exit 0
