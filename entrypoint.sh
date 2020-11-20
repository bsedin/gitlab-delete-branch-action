#!/bin/sh

set -u

git config --global credential.username $GITLAB_USERNAME
git config --global core.askPass /cred-helper.sh
git config --global credential.helper cache

git init
git remote add mirror "$*"

echo deleting $GITHUB_REF branch at $(git remote get-url --push mirror)
git push mirror :$GITHUB_REF
