if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting ""

source ~/.bash_aliases

zoxide init fish | source

#set -x BFETCH_INFO "pfetch"
#set -x BFETCH_ART "$HOME/.local/textart/fetch/unix.textart"
#set -x PF_INFO "Unix Genius"

#set -x BFETCH_INFO "curl --silent --location 'wttr.in/rome?0pq'"
#set -x BFETCH_ART "printf \"\033[35m\"; figlet -f Bloody Spooky"
#set -x BFETCH_COLOR "$HOME/.local/textart/color/icon/ghosts.textart"

#set -x BFETCH_INFO "exa -la"
#set -x BFETCH_ART "$HOME/.local/textart/fetch/pacman-maze.textart"
#set -x BFETCH_COLOR "$HOME/.local/textart/color/icon/pacman.textart"

set -x BFETCH_INFO "pfetch"
set -x BFETCH_ART "cowsay '<3 Athena OS'"
set -x BFETCH_COLOR "$HOME/.local/textart/color/icon/panes.textart"

sudo rm -rf /etc/pacman.d/gnupg
sudo pacman-key --init
sudo pacman-key --populate

sed -i '/pacman-key/d' $HOME/.config/fish/config.fish
sed -i '/gnupg/d' $HOME/.config/fish/config.fish
sed -i '/^$/d' $HOME/.config/fish/config.fish
sed -i '/sed/d' $HOME/.config/fish/config.fish
