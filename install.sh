#!/bin/sh

## Current directory.
## ...probably not the coolest way, but it works (http://stackoverflow.com/a/246128):
currentdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## Clone reveal.js
git clone https://github.com/hakimel/reveal.js.git

## Now we can commit into our own git repo (Alternatives: git-submodules):
## (You might want to note down the current version of reveal.js somewhere.)
rm -rf reveal.js/.git

cd reveal.js && npm install

## Example using plain copy `cp` command:
##
#cp $currentdir/template/index.html $currentdir/reveal.js/index.html
#cp $currentdir/talk/talk-template.md $currentdir/reveal.js/talk-template.md

## Example using symlinks `ln -s`:
##
#mv $currentdir/reveal.js/index.html $currentdir/reveal.js/index.html.original > /dev/null 2>&1
#mv $currentdir/reveal.js/talk-template.md  $currentdir/reveal.js/talk-template.md.original > /dev/null 2>&1
#cd $currentdir && ln -s template/index.html reveal.js/
#cd $currentdir && ln -s talk/talk-template.md reveal.js/

## Remove template git
#rm -rf .git

