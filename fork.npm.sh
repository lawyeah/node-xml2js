#!/usr/bin/bash

pwd
mkdir -p npmpkg
rm -rf npmpkg/*
mkdir -p npmpkg/lib
cp -r lib/* npmpkg/lib
cp -r types/* npmpkg
cp package.json package.save
npx clean-pkg-json
mv package.json npmpkg
mv package.save package.json
cd npmpkg
npm pkg fix
npm publish --access public