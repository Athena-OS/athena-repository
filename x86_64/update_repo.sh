#!/bin/bash

REPO_NAME="athena"

rm *.db *.db.sig *.db.tar.gz *.db.tar.gz.sig *.files *.files.sig *.files.tar.gz *.files.tar.gz.sig

repo-add --verify --sign -R $REPO_NAME.db.tar.gz *.pkg.tar.zst

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
