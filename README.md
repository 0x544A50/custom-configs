## Need configs?
### I got you..

These are evolving config files I use on virtually all my linux machines.
Their primary compatibility is aimed at WSL2 and cloud Linux, but I intended on making the auto-configuration as flexibile as possible.

### How to use?
1. Clone this repo with `git clone git@github.com:tphaneuf1/configs.git`
2. Add executable permissions with `chmod +x initial-setup.sh`
3. Run the script with `./initial-setup.sh` and follow prompts
4. Profit.

### What configs are included?

**I'm currently managing configurations for**: Zsh, Bash, Vim, Tmux, Powerlevel10k

The script will also install dependencies and applications needed for the configuration or basic daily usability.

**From apt repositories**: zsh, git, vim, python3-pip, ufw, htop, bat, tmux

**From github**:
- https://raw.githubusercontent.com/ohmyzsh/master/tools/install.sh
- https://github.com/romkatv/powerlevek10k
- https://github.com/zsh-users/zsh-autosuggestions
- https://github.com/zsh-users/zsh-syntax-highlighting
- https://github.com/tmux-plugins/tpm
- https://github.com/flazz/vim-colorschemes

### What else?
Look out for the `update-configs.sh` script which will appear in this repo at a later date.
When you pull changes in the repo, running this script will automatically handle backups of your old config files and replacng them with current versions.
