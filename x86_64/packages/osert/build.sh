#!/bin/sh

#NEED ONLY TO EDIT  sourcefiles VARIABLE

pkgname=$(grep "^pkgname=" PKGBUILD | awk -F'"' '{print $2}')
pkgver=$(grep "^pkgver=" PKGBUILD | awk -F'"' '{print $2}')
pkgrel=$(grep "^pkgrel=" PKGBUILD | awk -F'"' '{print $2}')
arch=$(grep "^arch=" PKGBUILD | awk -F'"' '{print $2}')

pkgfile=$pkgname-$pkgver-$pkgrel-$arch.pkg.tar.zst

echo $pkgfile

makepkg -f -sr --sign

rm -rf src pkg Eisvogel.tar.gz OSCP-Exam-Report-Template-Markdown

rm -rf ../../$pkgfile

mv $pkgfile $pkgfile.sig ../../
