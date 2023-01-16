#!/bin/sh

to_exclude=("seclists" "argus-clients" "xplico" "faradaysec" "inguma" "fuzzdb")

sed -i '/depends=/d' PKGBUILD
sed -i '/^$/d' PKGBUILD #Delete all empty lines

printf '\n' >> PKGBUILD #Avoid that the new "depends" string is placed on an existing row
printf 'depends=( ' >> PKGBUILD
printf "'%s' " $(pacman -Sgq blackarch-cracker blackarch-database blackarch-debugger blackarch-decompiler blackarch-exploitation blackarch-fuzzer blackarch-networking blackarch-recon blackarch-scanner blackarch-sniffer blackarch-spoof blackarch-webapp blackarch-windows | awk '!seen[$0]++' | sed -e "$(sed 's:.*:s/^&$//ig:' <<<$(printf "%s\n" "${to_exclude[@]}"))") >> PKGBUILD
printf "'ians' 'ratinject' 'shello' " >> PKGBUILD
printf ')\n' >> PKGBUILD
