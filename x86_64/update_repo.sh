#!/bin/bash

rm athena-repository*

echo "repo-add"
repo-add -n -R athena-repository.db.tar.gz *.pkg.tar.zst

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
