#!/bin/bash

echo "Starting bundle jekyll serve"
cp _config.yml ./_config-temp.yml
sed -i '/remote_theme/c\theme			 : "minimal-mistakes-jekyll"' ./_config-temp.yml

bundle exec jekyll serve --config ./_config-temp.yml
