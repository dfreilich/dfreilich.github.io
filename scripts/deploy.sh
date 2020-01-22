#!/bin/bash

rm -rf public
npm run build
cp CNAME README.md public/

if [[ $* == *--push* ]]; then
    echo "running npm deploy"
    npm run deploy
fi
