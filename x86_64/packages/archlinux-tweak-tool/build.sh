#!/bin/sh

git clone https://aur.archlinux.org/archlinux-tweak-tool-git.git

cd archlinux-tweak-tool-git

pkgname=$(grep "^pkgname=" PKGBUILD | cut -d "=" -f2)
pkgver=$(grep "^pkgver=" PKGBUILD | cut -d "=" -f2)
pkgrel=$(grep "^pkgrel=" PKGBUILD | cut -d "=" -f2)
arch=$(grep "^arch=" PKGBUILD | awk -F"'" '{print $2}')
pkgfile=$pkgname-$pkgver-$pkgrel-$arch.pkg.tar.zst

makepkg -sr --sign

mv *.zst *.zst.sig ../../../

cd ..
rm -rf archlinux-tweak-tool-git
