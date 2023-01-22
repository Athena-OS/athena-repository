#!/bin/sh

to_exclude=("facebrok")

sed -i '/depends=/d' PKGBUILD
sed -i '/^$/d' PKGBUILD #Delete all empty lines

printf '\n' >> PKGBUILD #Avoid that the new "depends" string is placed on an existing row
printf 'depends=( ' >> PKGBUILD
printf "'%s' " $(pacman -Sgq blackarch-recon blackarch-social | awk '!seen[$0]++' | sed -e "$(sed 's:.*:s/^&$//ig:' <<<$(printf "%s\n" "${to_exclude[@]}"))") >> PKGBUILD
printf "'belati' 'de4dot' 'netz' 'phoneinfoga' 'sherlock' 'skiptracer' 'sleuthkit' 'sn0int' 'sniffglue' 'twint' " >> PKGBUILD
printf ')\n' >> PKGBUILD
