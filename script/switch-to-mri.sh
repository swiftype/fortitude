#!/bin/bash

set -e

rm -f Gemfile.lock .ruby-version
ln -s .ruby-version-mri .ruby-version
rbenv install -s
bundle install
