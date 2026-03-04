#!/bin/sh
docker run --rm --network host -v "/home/mathis/code/claude/blog:/srv/jekyll" -p 4000:4000 jekyll/jekyll sh -c "bundle install && jekyll serve --host 0.0.0.0 --future"
