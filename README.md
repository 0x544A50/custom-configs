## Need configs?
### I got you..

These are rolling config files I use on my linux machines.
Their primary compatibility is aimed at WSL2 and cloud Linux, but I try to keep the script platform independent (but Debian based).

### How to use?
1. Clone this repo with `git clone git@github.com:s0cketwrench/custom-configs.git` or `git clone https://github.com/s0cketwrench/custom-configs.git`
2. Add executable permissions with `chmod +x initial-setup.sh`
3. Run the script with `./initial-setup.sh` and follow prompts
4. Profit.

**NOTE! Extra steps!**
1. You made need to logout for your profiles to update their defaults, without this Zsh may not start correctly. Be sure log out/in at the least.
2. In order for tmux to download the appropriate themes, the first time you open tmux press `<prefix>+I` for the plugin manager to grab the theme. Default prefix for tmux is `CTRL+b`.

### What configs are included?

**I'm currently managing configurations for**: Zsh, Bash, Vim, Tmux, Powerlevel10k

**Dependencies (and extras)**: `sudo apt install zsh git vim python3-pip ufw htop bat tmux curl wget figlet lolcat`

**Repos the script will pull from github**:
- https://raw.githubusercontent.com/ohmyzsh/master/tools/install.sh
- https://github.com/romkatv/powerlevek10k
- https://github.com/zsh-users/zsh-autosuggestions
- https://github.com/zsh-users/zsh-syntax-highlighting
- https://github.com/tmux-plugins/tpm
- https://github.com/flazz/vim-colorschemes

### What else?
Look out for the `update-configs.sh` script which will appear in this repo at a later date. When you git pull any changes in this repo, this script will automatically handle backups of your old config files and replace them with current versions.

#### Troubleshooting Resources
- https://www.ivaylopavlov.com/setting-up-windows-terminal-wsl-and-oh-my-zsh/#install_zs
- https://linuxhint.com/use-zsh-auto-suggestions/
- https://dev.to/andrenbrandao/terminal-setup-with-zsh-tmux-dracula-theme-48lm
- Powerline fonts for WSL2: http://iamnotmyself.com/2017/04/15/setting-up-powerline-shell-on-windows-subsystem-for-linux/
- https://github.com/jimeh/tmux-themepack
- Tmux configuration and nested sessions (ssh): https://github.com/samoshkin/tmux-config

