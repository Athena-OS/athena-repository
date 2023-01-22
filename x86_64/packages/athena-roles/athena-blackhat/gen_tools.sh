#!/bin/sh

to_exclude=("apkid" "python-yara-rednaga" "ssma" "mobsf" "quickscope" "argus-clients" "qt3" "xplico" "pyqt3" "qscintilla-qt3" "faradaysec" "gerix-wifi-cracker" "inguma" "braces" "facebrok" "pfff" "fuzzdb" "smartphone-pentest-framework")

sed -i '/depends=/d' PKGBUILD
sed -i '/^$/d' PKGBUILD #Delete all empty lines

printf '\n' >> PKGBUILD #Avoid that the new "depends" string is placed on an existing row
printf 'depends=( ' >> PKGBUILD
printf "'%s' " $(pacman -Sgq blackarch | awk '!seen[$0]++' | sed -e "$(sed 's:.*:s/^&$//ig:' <<<$(printf "%s\n" "${to_exclude[@]}"))") >> PKGBUILD
printf "'ians' 'ratinject' 'shello' 'redneuron' " >> PKGBUILD
printf ')\n' >> PKGBUILD
