#!/bin/bash

REPO_NAME="athena-repository"

rm $REPO_NAME*

repo-add --verify --sign -R $REPO_NAME.db.tar.gz *.pkg.tar.zst

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
