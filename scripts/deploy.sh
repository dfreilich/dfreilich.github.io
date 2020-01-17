#!/bin/bash

rm -rf public
npm run build
cp CNAME README.md public/
npm run deploy
