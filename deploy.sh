#!/usr/bin/env sh

# Abort on errors

set -e

# build
npm run build

# Navigate into the build output directory
cd dist

# if you are deploying to navigate to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A 
git commit -m 'deploy'
git push -f git@github.com:daluamon/deploy-github-pages.git master:gh-pages

cd -