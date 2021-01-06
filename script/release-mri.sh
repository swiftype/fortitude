#!/bin/bash

set -e

# Load the version
VERSION_FILE=.ruby-version-mri
if [ ! -f "${VERSION_FILE}" ]; then
  echo "ERROR: Could not find version file ${VERSION_FILE}!"
  exit 2
fi
export RBENV_VERSION=$(cat ${VERSION_FILE})

# Install and enable an appropriate ruby version
echo "-----------------------------------------------------------------------"
echo "Switching ruby to ${RBENV_VERSION}..."
rbenv install --skip-existing ${RBENV_VERSION}
echo "Done!"
echo

# Bundle install
echo "-----------------------------------------------------------------------"
echo "Installing dependencies..."
rm -f Gemfile.lock
bundle install
echo "Done"
echo

# Build the package
echo "-----------------------------------------------------------------------"
echo "Releasing the gem..."
bundle exec rake release
echo "Done!"
echo
