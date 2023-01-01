#!/bin/sh

#NEED ONLY TO EDIT  sourcefiles VARIABLE

pkgname=$(grep "^pkgname=" PKGBUILD | awk -F"=" '{print $2}')
pkgver=$(grep "^pkgver=" PKGBUILD | awk -F"=" '{print $2}')
pkgrel=$(grep "^pkgrel=" PKGBUILD | awk -F"=" '{split($2,a," ");gsub(/"/, "", a[1]);print a[1]}')
arch=$(grep "^arch=" PKGBUILD | awk -F"'" '{print $2}')

pkgfile=$pkgname-$pkgver-$pkgrel-$arch.pkg.tar.zst

echo $pkgfile

sed -i '/^sha256/d' PKGBUILD

makepkg -g >> PKGBUILD
makepkg -f -sr --sign

rm -rf src pkg

rm -rf ../../$pkgfile ../../$pkgfile.sig

mv $pkgfile $pkgfile.sig ../../
