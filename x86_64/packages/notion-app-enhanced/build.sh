#!/bin/sh

pkgname=$(grep "^pkgname=" PKGBUILD | awk -F'"' '{print $2}')
pkgver=$(grep "^pkgver=" PKGBUILD | awk -F'"' '{print $2}')
pkgrel=$(grep "^pkgrel=" PKGBUILD | awk -F'"' '{print $2}')
arch=$(grep "^arch=" PKGBUILD | awk -F'"' '{print $2}')

pkgfile=$pkgname-$pkgver-$pkgrel-$arch.pkg.tar.zst

makepkg -f -scr --sign

rm -rf $pkgname-$pkgver-$pkgrel.pacman $pkgname.tar.gz

rm -rf ../../$pkgfile

mv $pkgfile $pkgfile.sig ../../
