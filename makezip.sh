#!/bin/bash

rm indent/test/*.out
rm indent/test/*.diff

mkdir dist dist/xqueryvim dist/xqueryvim/autoload dist/xqueryvim/ftplugin dist/xqueryvim/indent dist/xqueryvim/indent/test

cp autoload/xquerycomplete.vim dist/xqueryvim/autoload
cp ftplugin/xquery.vim dist/xqueryvim/ftplugin
cat indent/xquery.vim | sed  /.*echomsg.*/d > dist/xqueryvim/indent/xquery.vim
cp indent/test/* dist/xqueryvim/indent/test
cp _ctags dist/xqueryvim
cp HOWTOINSTALL dist/xqueryvim

cd dist 
rm xqueryvim.zip
zip -r xqueryvim.zip *
mv xqueryvim.zip ..
rm -Rf dist





