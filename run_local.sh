#!/bin/sh
docker run --rm --network host -v "/home/mathis/code/claude/blog:/srv/jekyll" jekyll/jekyll sh -c 'bundle install && jekyll serve --host 0.0.0.0 --future --livereload --config _config.yml,_config.local.yml'
