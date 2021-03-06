#!/bin/sh

#NEED ONLY TO EDIT  sourcefiles VARIABLE

sourcefiles="etc"

pkgname=$(grep "^pkgname=" PKGBUILD | awk -F'"' '{print $2}')
pkgver=$(grep "^pkgver=" PKGBUILD | awk -F'"' '{print $2}')
pkgrel=$(grep "^pkgrel=" PKGBUILD | awk -F'"' '{print $2}')
arch=$(grep "^arch=" PKGBUILD | awk -F'"' '{print $2}')

pkgfile=$pkgname-$pkgver-$pkgrel-$arch.pkg.tar.zst

echo $pkgfile

sed -i '/^sha256/d' PKGBUILD

tar -zcvf $pkgname.tar.gz $sourcefiles 

makepkg -g >> PKGBUILD
makepkg -f -sr --sign

rm -rf src pkg $pkgname.tar.gz

rm -rf ../../$pkgfile

mv $pkgfile $pkgfile.sig ../../
