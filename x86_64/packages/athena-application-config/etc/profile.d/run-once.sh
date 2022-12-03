#!/bin/sh

FLAGFILE="$HOME/flag-work-once"
FLAGNET="$HOME/.flag-net-once"

if [ -f "$FLAGFILE" ]; then

    ############################################################
    #                                                          #
    #               SETTING LOCK SCREEN SHORTCUT               #
    #                                                          #
    ############################################################
    
    BEGINNING="gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"

    KEY_PATH="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"

    gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['$KEY_PATH/custom0/', '$KEY_PATH/custom1/']"

    $BEGINNING/custom0/ name "Lock Screen"
    $BEGINNING/custom0/ command "dm-tool lock"
    $BEGINNING/custom0/ binding "<Super>L"

    $BEGINNING/custom1/ name "Terminal"
    $BEGINNING/custom1/ command "kitty"
    $BEGINNING/custom1/ binding "<CTRL><ALT>T"

    gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>E']"
    gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>D']"

    ############################################################

    xdg-mime default org.gnome.Nautilus.desktop inode/directory
    
    ############################################################
 
    cat $HOME/dconf-interface.ini | dconf load /org/gnome/desktop/interface/
    cat $HOME/dconf-preferences.ini | dconf load /org/gnome/desktop/wm/preferences/
    cat $HOME/dconf-shell.ini | dconf load /org/gnome/shell/

    sh ~/.vim_runtime/install_awesome_parameterized.sh ~/.vim_runtime $USER

    rm -rf "${HOME}/.config/gtk-4.0"
    mkdir -p "${HOME}/.config/gtk-4.0"

    package=athena-sweet-dark-theme
    if pacman -Qq $package > /dev/null ; then
       gsettings set org.gnome.desktop.interface color-scheme prefer-dark
       gsettings set org.gnome.desktop.interface gtk-theme Sweet-Dark-v40
       gsettings set org.gnome.desktop.wm.preferences theme Sweet-Dark-v40
       gsettings set org.gnome.desktop.interface icon-theme Sweet-Purple
       gsettings set org.gnome.desktop.interface cursor-theme oreo_spark_purple_cursors
       gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/default/neon_circle.jpg
       gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/default/neon_circle.jpg
       gsettings set org.gnome.desktop.background picture-options stretched
       gsettings set org.gnome.shell.extensions.user-theme name "Sweet-Dark-v40"
       ln -sf "/usr/share/themes/Sweet-Dark-v40/assets" "${HOME}/.config/assets"
       ln -sf "/usr/share/themes/Sweet-Dark-v40/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
       ln -sf "/usr/share/themes/Sweet-Dark-v40/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"
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
       gsettings set org.gnome.shell.extensions.user-theme name "Graphite-Dark-compact"
       ln -sf "/usr/share/themes/Graphite-Dark-compact/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
       ln -sf "/usr/share/themes/Graphite-Dark-compact/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
       ln -sf "/usr/share/themes/Graphite-Dark-compact/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"
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
       gsettings set org.gnome.shell.extensions.user-theme name "Gruvbox-Dark-B"
       ln -sf "/usr/share/themes/Gruvbox-Dark-B/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
       ln -sf "/usr/share/themes/Gruvbox-Dark-B/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
       ln -sf "/usr/share/themes/Gruvbox-Dark-B/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"
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
       gsettings set org.gnome.desktop.interface cursor-theme oreo_blue_cursors
       gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/default/blue-eyes.jpg
       gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/default/blue-eyes.jpg
       gsettings set org.gnome.desktop.background picture-options stretched
       gsettings set org.gnome.shell.extensions.user-theme name "Tokyonight-Dark-B"
       ln -sf "/usr/share/themes/Tokyonight-Dark-B/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
       ln -sf "/usr/share/themes/Tokyonight-Dark-B/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
       ln -sf "/usr/share/themes/Tokyonight-Dark-B/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"
    fi
    
    rm -rf $HOME/dconf-interface.ini $HOME/dconf-preferences.ini $HOME/dconf-shell.ini
    rm -rf "$FLAGFILE"

    systemctl --user enable --now psd
    ln -s "$HOME/.mozilla/firefox-esr" "$HOME/.mozilla/firefox"    
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    if [ -f "$FLAGNET" ]; then
    # Commented for keeping nist-feed disable. The user decides if enable it.
    #	/usr/local/bin/nist-feed -n -l
    	rm -rf "$FLAGNET"
    fi
    /usr/local/bin/htb-update
fi

#If tun0 is down (i.e., after a reboot), the shell prompt must be updated with the running interfaces
if ! nmcli c show --active | grep -q tun ; then

   /usr/local/bin/prompt-reset

fi

gsettings set org.gnome.shell disable-user-extensions false
