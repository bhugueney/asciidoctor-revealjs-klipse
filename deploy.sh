#!/bin/bash
set -e
cd $(dirname $0)
./bb.sh
cd site
git init
git add .
git commit -m "Deploy to GitHub Pages"
git push --force --quiet "git@github.com:bhugueney/asciidoctor-revealjs-klipse.git" master:gh-pages
rm -fr .git
echo "Deployed to https://bhugueney.github.io/asciidoctor-revealjs-klipse"
