#!/bin/bash

rm -rf public
npm run build
cp CNAME README.md sitemap.xml public/

if [[ $* == *--push* ]]; then
    echo "running npm deploy"
    npm run deploy
fi
