#!/bin/sh

FLAGFILE="$HOME/flag-work-once"
#FLAGNET="$HOME/.flag-net-once"

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
    gsettings set org.gnome.desktop.default-applications.terminal exec kitty
    
    ############################################################
 
    cat $HOME/dconf-interface.ini | dconf load /org/gnome/desktop/interface/
    cat $HOME/dconf-preferences.ini | dconf load /org/gnome/desktop/wm/preferences/
    cat $HOME/dconf-shell.ini | dconf load /org/gnome/shell/

    sh ~/.vim_runtime/install_awesome_parameterized.sh ~/.vim_runtime $USER

    rm -rf "${HOME}/.config/gtk-4.0"
    mkdir -p "${HOME}/.config/gtk-4.0"

    package=athena-sweet-dark-theme
    if pacman -Qq $package > /dev/null ; then
         theme_name="Sweet-Dark-v40"
         gnome_shell="Sweet-Dark-v40"

         color_scheme="prefer-dark"
         icon_theme="Sweet-Purple"
         cursor_theme="oreo_spark_purple_cursors"
         background_theme="file:///usr/share/backgrounds/default/neon_circle.jpg"
         picture_options="stretched"
    fi

    package=athena-graphite-theme
    if pacman -Qq $package > /dev/null ; then
         theme_name="Graphite-Dark"
         gnome_shell="Graphite-Dark"

         color_scheme="prefer-dark"
         icon_theme="Tela-circle-black-dark"
         cursor_theme="Bibata-Modern-Ice"
         background_theme="file:///usr/share/backgrounds/default/arch-ascii.png"
         picture_options="stretched"
    fi

    package=athena-gruvbox-theme
    if pacman -Qq $package > /dev/null ; then
         theme_name="Gruvbox-Dark-B"
         gnome_shell="Gruvbox-Dark-B"

         color_scheme="prefer-dark"
         icon_theme="Material-Black-Mango-Suru"
         cursor_theme="Fuchsia-Pop"
         background_theme="file:///usr/share/backgrounds/default/cyborg_gruv.png"
         picture_options="stretched"
    fi

    package=athena-akame-theme
    if pacman -Qq $package > /dev/null ; then
         theme_name="Quartz-Dark-Red"
         gnome_shell="Quartz-Red"

         color_scheme="prefer-dark"
         icon_theme="Material-Black-Cherry-Suru"
         cursor_theme="Bibata-Modern-DarkRed"
         background_theme="file:///usr/share/backgrounds/default/akame.jpg"
         picture_options="stretched"
    fi

    package=athena-blue-eyes-theme
    if pacman -Qq $package > /dev/null ; then
         theme_name="Tokyonight-Dark-B"
         gnome_shell="Tokyonight-Dark-B"

         color_scheme="prefer-dark"
         icon_theme="tokyonight_dark"
         cursor_theme="oreo_blue_cursors"
         background_theme="file:///usr/share/backgrounds/default/blue-eyes.jpg"
         picture_options="stretched"
    fi

    gsettings set org.gnome.desktop.interface gtk-theme $theme_name
    gsettings set org.gnome.desktop.wm.preferences theme $theme_name
    gsettings set org.gnome.shell.extensions.user-theme name $gnome_shell

    gsettings set org.gnome.desktop.interface color-scheme $color_scheme
    gsettings set org.gnome.desktop.interface icon-theme $icon_theme
    gsettings set org.gnome.desktop.interface cursor-theme $cursor_theme
    gsettings set org.gnome.desktop.background picture-uri-dark $background_theme
    gsettings set org.gnome.desktop.background picture-uri $background_theme
    gsettings set org.gnome.desktop.background picture-options $picture_options

    ln -sf "/usr/share/themes/$theme_name/assets" "${HOME}/.config/assets"
    ln -sf "/usr/share/themes/$theme_name/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
    ln -sf "/usr/share/themes/$theme_name/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"
    
    rm -rf $HOME/dconf-interface.ini $HOME/dconf-preferences.ini $HOME/dconf-shell.ini
    rm -rf "$FLAGFILE"

    systemctl --user enable --now psd
    ln -s "$HOME/.mozilla/firefox-esr" "$HOME/.mozilla/firefox"    
fi

#if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
#    if [ -f "$FLAGNET" ]; then
#    # Commented for keeping nist-feed disable. The user decides if enable it.
#    #	/usr/local/bin/nist-feed -n -l
#    	rm -rf "$FLAGNET"
#    fi
#    /usr/local/bin/htb-update
#fi

#If tun0 is down (i.e., after a reboot), the shell prompt must be updated with the running interfaces
if ! nmcli c show --active | grep -q tun ; then

   /usr/local/bin/prompt-reset

fi

gsettings set org.gnome.shell disable-user-extensions false
