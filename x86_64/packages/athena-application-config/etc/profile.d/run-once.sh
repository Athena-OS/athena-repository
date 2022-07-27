#!/bin/sh

FLAGFILE="$HOME/flag-work-once"

if [ -f "$FLAGFILE" ]; then
    rm -rf "$FLAGFILE"
    
    xdg-mime default org.gnome.Nautilus.desktop inode/directory
    
     
    gnome-extensions install $HOME/flypieschneegans.github.com.v16.shell-extension.zip
    gnome-extensions enable flypie@schneegans.github.com

    gnome-extensions install $HOME/burn-my-windowsschneegans.github.com.v18.shell-extension.zip
    gnome-extensions enable burn-my-windows@schneegans.github.com

    gnome-extensions install $HOME/appindicatorsupportrgcjonas.gmail.com.v42.shell-extension.zip
    gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com

    make -C $HOME/dash-to-dock install

    gnome-extensions install $HOME/dingrastersoft.com.v46.shell-extension.zip
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
       gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/default/arch-ascii.png
       gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/default/arch-ascii.png
       gsettings set org.gnome.desktop.background picture-options stretched
    fi

    rm -rf $HOME/flypieschneegans.github.com.v16.shell-extension.zip $HOME/dash-to-dock $HOME/dingrastersoft.com.v46.shell-extension.zip $HOME/burn-my-windowsschneegans.github.com.v18.shell-extension.zip $HOME/appindicatorsupportrgcjonas.gmail.com.v42.shell-extension.zip
    rm -rf $HOME/dconf-interface.ini $HOME/dconf-preferences.ini $HOME/dconf-shell.ini

    $HOME/.tmux/plugins/tpm/scripts/install_plugins.sh
    
    /usr/local/bin/nist-feed -n -l
fi

#If tun0 is down (i.e., after a reboot), the shell prompt must be updated with the running interfaces
if ! nmcli c show --active | grep -q tun ; then

   /usr/local/bin/prompt-reset

fi

/usr/local/bin/htb-update
export SHELL=$(which fish)
gsettings set org.gnome.shell disable-user-extensions false
