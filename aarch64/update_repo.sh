#!/bin/bash

rm athena-repository*

repo-add --verify --sign -R athena-repository.db.tar.gz *.pkg.tar.zst

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
