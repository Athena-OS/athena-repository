#!/bin/bash

rm athena-repository*

echo "repo-add"
repo-add --verify --sign -R athena-repository.db.tar.gz *.pkg.tar.zst

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
