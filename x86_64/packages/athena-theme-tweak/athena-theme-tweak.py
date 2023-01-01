import argparse
import base64, zlib
import os
import random
import subprocess

menu_options = {
    1: 'Border',
    2: 'Borderless',
    3: 'Exit',
}
home = os.path.expandvars("$HOME")

class colors:
    '''Colors class:reset all colors with colors.reset; two
    sub classes fg for foreground
    and bg for background; use as colors.subclass.colorname.
    i.e. colors.fg.red or colors.bg.greenalso, the generic bold, disable,
    underline, reverse, strike through,
    and invisible work with the main class i.e. colors.bold'''
    reset='\033[0m'
    bold='\033[01m'
    disable='\033[02m'
    underline='\033[04m'
    reverse='\033[07m'
    strikethrough='\033[09m'
    invisible='\033[08m'
    class fg:
        black='\033[30m'
        red='\033[31m'
        green='\033[32m'
        orange='\033[33m'
        blue='\033[34m'
        purple='\033[35m'
        cyan='\033[36m'
        lightgrey='\033[37m'
        darkgrey='\033[90m'
        lightred='\033[91m'
        lightgreen='\033[92m'
        yellow='\033[93m'
        lightblue='\033[94m'
        pink='\033[95m'
        lightcyan='\033[96m'
        random='\033['+random.choice(['0','33','92','93','94','96'])+'m'
    class bg:
        black='\033[40m'
        red='\033[41m'
        green='\033[42m'
        orange='\033[43m'
        blue='\033[44m'
        purple='\033[45m'
        cyan='\033[46m'
        lightgrey='\033[47m'

def arg_parse():
    parser = argparse.ArgumentParser(add_help=False)
    parser.add_argument("-b", "--browser", action='store_true', help="set the current browser logo in PenTOXIC menu")
    parser.add_argument("-c", "--colored", action='store_true', help="let's give some random colored output")
    parser.add_argument("-h", "--help", action='store_true', help="show this help message and exit")
    parser.add_argument("-l", "--list", action='store_true', help="list all available Athena themes")
    parser.add_argument("-t", "--theme", choices=["AkameGaKill", "BlueEyesSamurai", "Graphite", "CyborgGruvbox", "SweetDark"], help="specify an Athena theme to be set [AkameGaKill|BlueEyesSamurai|Graphite|CyborgGruvbox|SweetDark]")
    

    args = parser.parse_args()
    return args

def help():
   # Display Help
   print("Athena Theme Tweak\n")

   print("List of arguments:\n")
   
   print("-b, --browser                 set the current browser logo in PenTOXIC menu")
   print("-c, --colored                 let's give some random colored output")
   print("-h, --help                    show this help message and exit")
   print("-l, --list                    list all available Athena themes")
   print("-t, --theme <theme-name>      specify an Athena theme to be set [AkameGaKill|BlueEyesSamurai|Graphite|CyborgGruvbox|SweetDark]")
   print("\n")
   print("Usage Examples:")
   print("athena-theme-tweak -l")
   print("athena-theme-tweak -t BlueEyesSamurai")
   print("athena-theme-tweak -b")

def print_banner():
    #cat banner.txt | gzip | base64
    encoded_data = "H4sIAAAAAAAAA7WWvY7rOAyF+zyF1d1KrgQBwmIJpAmgyq0AQ36RQM++51DyXyY/9myuMBPbMc3PJA+pdN3fX5fjptaG7L03xeRg/xLEluhuuobBpSimHEadiKTrggwg4D+55JxLScL3ITPmlkhI/Izl+5Cuy+k23BgGAMqRz0k7Dem6CAjKwgWOG+TbEFWYRMQAzuAGft4+Uk6oK+RcDARsDIXsvaThpjpw/xsC35BQKCalgh4hgxT9FNX01X2qyluIDYbevM1wG50v2aQhCVnEIJhBVWZ+C0EExYtINEWECfK+aCi6MnsfnFxNfwUJIZu2pBRBeyM1SL/kMlMKITkf6sYnEBtKKS3x8JQBSSmyCePC4H1BbPlIL/6EWEjItwU3YrKPGFpXMBKrINqCSXAPmFKOzK8HCBD6/qXq1GAMFo2j9kVrwuiGGFEfhnI6khYFu4EU9VLE6fAwKIpHVFRThMaisFf8oUG8g+SWKKSadVWGd5Spp5YBxNRKBqAbhMxQz0/hwCCaSmuDQL7uNkQlQ0pZEEFGvDKIZnONw74LaQPROMw+V1HnYERxBNshlB34z84hZROHNezR8Jy1QrKps8JoP0NWwLAYaHUXMRMhJR1ees9zSsZd1TPLVa0eWQskIIaSaxz0gyY02VBTQ910b9erbrwOHeOgLSps58pKUlUIXynKRtwLpAhCWcoh/LnQdai6Iq4Yt8prMkZw3jtnOkxmJJAjCI/RN/WuiK0kVojXNqYxZ5TRFwni5kDqLqU7O9IXhwE9aoQi43ATPpGlQnx5EN0CsVmHxQya041MD/NPlHXxx4R2Z+Lcyc3YalWeyHotfPCqKYO6ALJ+bYQS058py4Iq2D8Iy29kbFCq/ExeK6RoZ3C+oiOKtTXRDE/SJgRGxKkYmJhd6oO8GmSbSLJmqgQ8yFnOgoIUjE6SlNaaJM6EAKnufb5sx00vwh8aze5swW2ItqIuFBrT+fBP1U9bfEZHSvUcUwNoz5amv29AQhVc21x0XrXt9+Cm+Bli4Qnelu2wXuaif+E7EPXISu3zkjWO4yV5C5kZj95CPhPGewjHun06uu2JeryF2J8RbCkvNo6TkA/rDOPXkDOLjIlLj3hBPXu1pnW9N9xavjJo+B7nXTdOON6nOz+m9vx8WLyM9YCr/pnh5nJjOan/5ma24+M4v5DeTyMeUOtR7/BdYDTyJq7U16gvfZ8/7k8M18uN5diNPf/6eqv54uP47tIvpkrmWdLzFqJ6qE9OD/i9Ydpc7l60vnc/36q+9O4/3WVkMjSNPY5MKAvQj5qif+vVn5ower1P9aufhvft5dYSb6+VXV02GN5ikffYr7Jo508Pu/Vw643lC8+X/wAALQtT9hEAAA=="
    banner = zlib.decompress(base64.b64decode(encoded_data), 16 + zlib.MAX_WBITS).decode('utf-8')
    print(banner)

def print_menu():
    print("\r")
    for key in menu_options.keys():
        print (key, '--', menu_options[key] )

def menu():
    while(True):
        print_menu()
        option = ''
        try:
            option = int(input('Would you like to have Border or Borderless theme? '))
        except:
            print('Wrong input. Please enter a number ...')
        #Check what choice was entered and act accordingly
        if option == 1:
            border = 1
            return border
        elif option == 2:
            border = 0
            return border
        elif option == 3:
            print('Exiting...')
            exit()
        else:
            print('Invalid option. Please enter a number between 1 and 3.')

args = arg_parse()

if args.colored:
    print(colors.fg.random)

if args.help:
    help()
    exit()

browser_map = {
    "Brave": "athena-brave-config",
    "Firefox ESR": "athena-firefox-config"
}

if args.browser:
    print("Detecting the primary installed browser...")
    for i in browser_map:
        current_browser_package = subprocess.getoutput("pacman -Qq "+browser_map[i])
        if not "error" in current_browser_package:
            print("The browser "+current_browser_package+" is installed.")
            break
    if current_browser_package == "athena-firefox-config":
        subprocess.call("dconf dump /org/gnome/shell/ > "+home+"/.tmp.txt", shell=True)
        subprocess.call("sed -i 's/{\\\\\"name\\\\\":\\\\\"Brave\\\\\",\\\\\"icon\\\\\":\\\\\"\/usr\/share\/icons\/pentoxic\/brave.png\\\\\",\\\\\"type\\\\\":\\\\\"Command\\\\\",\\\\\"data\\\\\":{\\\\\"command\\\\\":\\\\\"brave\\\\\"},\\\\\"angle\\\\\":-1}/{\\\\\"name\\\\\":\\\\\"Firefox ESR\\\\\",\\\\\"icon\\\\\":\\\\\"\/usr\/share\/icons\/pentoxic\/firefox_logo_arch-256x256.png\\\\\",\\\\\"type\\\\\":\\\\\"Command\\\\\",\\\\\"data\\\\\":{\\\\\"command\\\\\":\\\\\"firefox-esr\\\\\"},\\\\\"angle\\\\\":-1}/g' "+home+"/.tmp.txt", shell=True)
        subprocess.call("dconf load /org/gnome/shell/ < "+home+"/.tmp.txt", shell=True)
        subprocess.call("rm -rf "+home+"/.tmp.txt", shell=True)
        print("Done.")
    elif current_browser_package == "athena-brave-config":
        subprocess.call("dconf dump /org/gnome/shell/ > "+home+"/.tmp.txt", shell=True)
        subprocess.call("sed -i 's/{\\\\\"name\\\\\":\\\\\"Firefox ESR\\\\\",\\\\\"icon\\\\\":\\\\\"\/usr\/share\/icons\/pentoxic\/firefox_logo_arch-256x256.png\\\\\",\\\\\"type\\\\\":\\\\\"Command\\\\\",\\\\\"data\\\\\":{\\\\\"command\\\\\":\\\\\"firefox-esr\\\\\"},\\\\\"angle\\\\\":-1}/{\\\\\"name\\\\\":\\\\\"Brave\\\\\",\\\\\"icon\\\\\":\\\\\"\/usr\/share\/icons\/pentoxic\/brave.png\\\\\",\\\\\"type\\\\\":\\\\\"Command\\\\\",\\\\\"data\\\\\":{\\\\\"command\\\\\":\\\\\"brave\\\\\"},\\\\\"angle\\\\\":-1}/g' "+home+"/.tmp.txt", shell=True)
        subprocess.call("dconf load /org/gnome/shell/ < "+home+"/.tmp.txt", shell=True)
        subprocess.call("rm -rf "+home+"/.tmp.txt", shell=True)
        print("Done.")
    exit()

theme_map = {
    "AkameGaKill": "athena-akame-theme",
    "BlueEyesSamurai": "athena-blue-eyes-theme",
    "CyborgGruvbox": "athena-gruvbox-theme",
    "Graphite": "athena-graphite-theme",
    "SweetDark": "athena-sweet-dark-theme"
}

if args.list:
    print("Theme List:")
    for i in theme_map:
        print(i)

if args.theme:
    chosen_theme=args.theme
    theme_package=theme_map[chosen_theme]
    
    print("Detecting the current installed theme...")
    for i in theme_map:
        current_theme_package = subprocess.getoutput("pacman -Qq "+theme_map[i])
        if not "error" in current_theme_package:
            print("The theme "+current_theme_package+" is installed.")
            break

    if current_theme_package != theme_package:
        print("Uninstalling the previous installed Athena theme: "+current_theme_package+"...")
        subprocess.call("sudo pacman -Rs --noconfirm "+current_theme_package, shell=True)
    
    subprocess.call("sudo pacman -Syy --noconfirm --overwrite \* "+theme_package, shell=True)
    
    subprocess.call("rm -rf "+home+"/.config/assets", shell=True)
    subprocess.call("rm -rf "+home+"/.config/gtk-4.0", shell=True)
    subprocess.call("mkdir -p "+home+"/.config/gtk-4.0", shell=True)
    
    if chosen_theme == "AkameGaKill":
        theme_name = "Quartz-Dark-Red"
        gnome_shell = "Quartz-Red"

        color_scheme = "prefer-dark"
        icon_theme = "Material-Black-Cherry-Suru"
        cursor_theme = "Bibata-Modern-DarkRed"
        background_theme = "file:///usr/share/backgrounds/default/akame.jpg"
        picture_options = "stretched"
        vscode_theme = "red-blood"
        kitty_theme = "CrayonPonyFish.conf"
        tmux_theme = "redwine"

    elif chosen_theme == "BlueEyesSamurai":
        b = menu()
        if b == 1:
            theme_name = "Tokyonight-Dark-B"
            gnome_shell = "Tokyonight-Dark-B"
        else:
            theme_name = "Tokyonight-Dark-BL"
            gnome_shell = "Tokyonight-Dark-BL"

        color_scheme = "prefer-dark"
        icon_theme = "tokyonight_dark"
        cursor_theme = "oreo_blue_cursors"
        background_theme = "file:///usr/share/backgrounds/default/blue-eyes.jpg"
        picture_options = "stretched"
        vscode_theme = "Tokyo Night Storm"
        kitty_theme = "Tokyo_Night_Storm.conf"
        tmux_theme = "sky"

    elif chosen_theme == "CyborgGruvbox":
        b = menu()
        if b == 1:
            theme_name = "Gruvbox-Dark-B"
            gnome_shell = "Gruvbox-Dark-B"
        else:
            theme_name = "Gruvbox-Dark-BL"
            gnome_shell = "Gruvbox-Dark-BL"

        color_scheme = "prefer-dark"
        icon_theme = "Material-Black-Mango-Suru"
        cursor_theme = "Fuchsia-Pop"
        background_theme = "file:///usr/share/backgrounds/default/cyborg_gruv.png"
        picture_options = "stretched"
        vscode_theme = "Gruvbox Material Dark"
        kitty_theme = "gruvbox_dark.conf"
        tmux_theme = "gold"

    elif chosen_theme == "Graphite":
        b = menu()
        if b == 1:
            theme_name = "Graphite-Dark"
            gnome_shell = "Graphite-Dark"
        else:
            theme_name = "Graphite-Dark-Rimless"
            gnome_shell = "Graphite-Dark-Rimless"

        color_scheme = "prefer-dark"
        icon_theme = "Tela-circle-black-dark"
        cursor_theme = "Bibata-Modern-Ice"
        background_theme = "file:///usr/share/backgrounds/default/arch-ascii.png"
        picture_options = "stretched"
        vscode_theme = "Just Black"
        kitty_theme = "Atom.conf"
        tmux_theme = "snow"

    elif chosen_theme == "SweetDark":
        theme_name = "Sweet-Dark-v40"
        gnome_shell = "Sweet-Dark-v40"

        color_scheme = "prefer-dark"
        icon_theme = "Sweet-Purple"
        cursor_theme = "oreo_spark_purple_cursors"
        background_theme = "file:///usr/share/backgrounds/default/neon_circle.jpg"
        picture_options = "stretched"
        vscode_theme = "Radical"
        kitty_theme = "AdventureTime.conf"
        tmux_theme = "violet"

    #Reinitialize gsettings for applying the changes correctly when we change between border and borderless in the same theme
    subprocess.call("gsettings set org.gnome.desktop.interface gtk-theme \"\"", shell=True)
    subprocess.call("gsettings set org.gnome.desktop.wm.preferences theme \"\"", shell=True)
    subprocess.call("gsettings set org.gnome.shell.extensions.user-theme name \"\"", shell=True)
    subprocess.call("sleep 1", shell=True)
    subprocess.call("gsettings set org.gnome.desktop.interface gtk-theme "+theme_name, shell=True)
    subprocess.call("gsettings set org.gnome.desktop.wm.preferences theme "+theme_name, shell=True)
    subprocess.call("gsettings set org.gnome.shell.extensions.user-theme name "+gnome_shell, shell=True)

    subprocess.call("ln -sf \"/usr/share/themes/"+theme_name+"/gtk-4.0/assets\" \""+home+"/.config/gtk-4.0/assets\"", shell=True)
    subprocess.call("ln -sf \"/usr/share/themes/"+theme_name+"/gtk-4.0/gtk.css\" \""+home+"/.config/gtk-4.0/gtk.css\"", shell=True)
    subprocess.call("ln -sf \"/usr/share/themes/"+theme_name+"/gtk-4.0/gtk-dark.css\" \""+home+"/.config/gtk-4.0/gtk-dark.css\"", shell=True)
    subprocess.call("ln -sf \"/usr/share/themes/"+theme_name+"/assets\" \""+home+"/.config/assets\"", shell=True)

    subprocess.call("gsettings set org.gnome.desktop.interface color-scheme "+color_scheme, shell=True)
    subprocess.call("gsettings set org.gnome.desktop.interface icon-theme "+icon_theme, shell=True)
    subprocess.call("gsettings set org.gnome.desktop.interface cursor-theme "+cursor_theme, shell=True)
    subprocess.call("gsettings set org.gnome.desktop.background picture-uri-dark \"\"", shell=True)
    subprocess.call("gsettings set org.gnome.desktop.background picture-uri-dark "+background_theme, shell=True)
    subprocess.call("gsettings set org.gnome.desktop.background picture-uri \"\"", shell=True)
    subprocess.call("gsettings set org.gnome.desktop.background picture-uri "+background_theme, shell=True)
    subprocess.call("gsettings set org.gnome.desktop.background picture-options "+picture_options, shell=True)

    subprocess.call("sed -i 's/\"workbench.colorTheme\":.*/\"workbench.colorTheme\": \""+vscode_theme+"\",/g' \""+home+"/.config/Code - OSS/User/settings.json\"", shell=True)
    subprocess.call("cp -rf "+home+"/.config/kitty/kitty-themes/themes/"+kitty_theme+" "+home+"/.config/kitty/current-theme.conf", shell=True)
    subprocess.call("sed -i 's/set -g @tmux_power_theme.*/set -g @tmux_power_theme \'"+tmux_theme+"\'/g' "+home+"/.tmux.conf", shell=True)

    exit()