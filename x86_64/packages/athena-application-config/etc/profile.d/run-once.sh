#!/bin/sh

FLAGFILE="$HOME/flag-work-once"
FLAGNET="$HOME/.flag-net-once"

PIE="$HOME/flypieschneegans.github.com.v17.shell-extension.zip"
BMW="$HOME/burn-my-windowsschneegans.github.com.v21.shell-extension.zip"
IND="$HOME/appindicatorsupportrgcjonas.gmail.com.v44.shell-extension.zip"
DING="$HOME/dingrastersoft.com.v49.shell-extension.zip"
D2D="$HOME/dash-to-dock"

if [ -f "$FLAGFILE" ]; then
        
    xdg-mime default org.gnome.Nautilus.desktop inode/directory
    
     
    gnome-extensions install $PIE
    gnome-extensions enable flypie@schneegans.github.com

    gnome-extensions install $BMW
    gnome-extensions enable burn-my-windows@schneegans.github.com

    gnome-extensions install $IND
    gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com

    make -C $D2D install

    gnome-extensions install $DING
    gnome-extensions enable ding@rastersoft.com

    cat $HOME/dconf-interface.ini | dconf load /org/gnome/desktop/interface/
    cat $HOME/dconf-preferences.ini | dconf load /org/gnome/desktop/wm/preferences/
    cat $HOME/dconf-shell.ini | dconf load /org/gnome/shell/

    sh ~/.vim_runtime/install_awesome_parameterized.sh ~/.vim_runtime $USER

    package=athena-sweet-dark-theme
    if pacman -Qq $package > /dev/null ; then
       gsettings set org.gnome.desktop.interface color-scheme prefer-dark
       gsettings set org.gnome.desktop.interface gtk-theme Sweet-Dark
       gsettings set org.gnome.desktop.wm.preferences theme Sweet-Dark
       gsettings set org.gnome.desktop.interface icon-theme Sweet-Purple
       gsettings set org.gnome.desktop.interface cursor-theme oreo_spark_purple_cursors
       gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/default/neon_circle.jpg
       gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/default/neon_circle.jpg
       gsettings set org.gnome.desktop.background picture-options stretched
    fi

    package=athena-graphite-theme
    if pacman -Qq $package > /dev/null ; then
       gsettings set org.gnome.desktop.interface color-scheme prefer-dark
       gsettings set org.gnome.desktop.interface gtk-theme Graphite-Dark-compact
       gsettings set org.gnome.desktop.wm.preferences theme Graphite-Dark-compact
       gsettings set org.gnome.desktop.interface icon-theme Tela-circle-black-dark
       gsettings set org.gnome.desktop.interface cursor-theme Bibata-Modern-Ice
       gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/default/arch-ascii.png
       gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/default/arch-ascii.png
       gsettings set org.gnome.desktop.background picture-options stretched
    fi

    package=athena-gruvbox-theme
    if pacman -Qq $package > /dev/null ; then
       gsettings set org.gnome.desktop.interface color-scheme prefer-dark
       gsettings set org.gnome.desktop.interface gtk-theme Gruvbox-Dark-B
       gsettings set org.gnome.desktop.wm.preferences theme Graphite-Dark-compact
       gsettings set org.gnome.desktop.interface icon-theme Material-Black-Mango-Suru
       gsettings set org.gnome.desktop.interface cursor-theme Fuchsia-Pop
       gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/default/cyborg_gruv.png
       gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/default/cyborg_gruv.png
       gsettings set org.gnome.desktop.background picture-options stretched
    fi

    package=athena-akame-theme
    if pacman -Qq $package > /dev/null ; then
       gsettings set org.gnome.desktop.interface color-scheme prefer-dark
       gsettings set org.gnome.desktop.interface gtk-theme Abyss-BLOOD-3.36
       gsettings set org.gnome.desktop.wm.preferences theme Graphite-Dark-compact
       gsettings set org.gnome.desktop.interface icon-theme Material-Black-Cherry-Suru
       gsettings set org.gnome.desktop.interface cursor-theme Bibata-Modern-DarkRed
       gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/default/akame.jpg
       gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/default/akame.jpg
       gsettings set org.gnome.desktop.background picture-options stretched
    fi

    package=athena-blue-eyes-theme
    if pacman -Qq $package > /dev/null ; then
       gsettings set org.gnome.desktop.interface color-scheme prefer-dark
       gsettings set org.gnome.desktop.interface gtk-theme Tokyonight-Dark-B
       gsettings set org.gnome.desktop.wm.preferences theme Graphite-Dark-compact
       gsettings set org.gnome.desktop.interface icon-theme tokyonight_dark
       gsettings set org.gnome.desktop.interface cursor-theme oreo_spark_lite_cursors
       gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/default/blue-eyes.jpg
       gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/default/blue-eyes.jpg
       gsettings set org.gnome.desktop.background picture-options stretched
    fi

    rm -rf $PIE $BMW $IND $DING $D2D
    rm -rf $HOME/dconf-interface.ini $HOME/dconf-preferences.ini $HOME/dconf-shell.ini
    rm -rf "$FLAGFILE"
    
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    if [ -f "$FLAGNET" ]; then
    	$HOME/.tmux/plugins/tpm/scripts/install_plugins.sh
    	/usr/local/bin/nist-feed -n -l
    	rm -rf "$FLAGNET"
    fi
    /usr/local/bin/htb-update
fi

#If tun0 is down (i.e., after a reboot), the shell prompt must be updated with the running interfaces
if ! nmcli c show --active | grep -q tun ; then

   /usr/local/bin/prompt-reset

fi

export SHELL=$(which fish)
gsettings set org.gnome.shell disable-user-extensions false
