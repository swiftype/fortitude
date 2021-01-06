#!/bin/bash

set -e

rm -f Gemfile.lock .ruby-version
ln -s .ruby-version-jruby .ruby-version
rbenv install -s
bundle install
