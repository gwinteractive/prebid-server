#!/bin/bash
set -e

git remote add upstream https://github.com/prebid/prebid-server.git || true

git fetch upstream
git rebase -f upstream/master
git push
git push --tags
