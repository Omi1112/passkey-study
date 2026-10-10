#!/usr/bin/env bash
set -euo pipefail

command -v rails >/dev/null || gem install rails -v '~> 8.1'

if [ -f Gemfile ]; then
  bundle install
  bin/rails db:prepare
fi

