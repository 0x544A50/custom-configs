#!/bin/bash

# Resources:
# - https://www.ivaylopavlov.com/setting-up-windows-terminal-wsl-and-oh-my-zsh/#install_zs
# - https://linuxhint.com/use-zsh-auto-suggestions/
# - https://dev.to/andrenbrandao/terminal-setup-with-zsh-tmux-dracula-theme-48lm
# - Powerline fonts for WSL2: http://iamnotmyself.com/2017/04/15/setting-up-powerline-shell-on-windows-subsystem-for-linux/
# - https://github.com/jimeh/tmux-themepack

# Install dependencies with the below commands
# Debian:
# - sudo apt update -y && sudo apt upgrade -y
# - sudo apt install -y zsh git vim python3-pip ufw htop bat tmux curl wget

# CentOS/RHEL:
# You may need to install RPMFusion repos: https://rpmfusion.org/
# - sudo dnf update -y && sudo dnf upgrade -y
# - sudo dnf install zsh git vim python3-pip ufw htop bat tmux curl wget

# oh-my-zsh
if [[ -d ~/.oh-my-zsh ]]; then rm -rf ~/.oh-my-zsh; fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# powerlevel10k
if [[ -d ~/.oh-my-zsh/themes/powerlevel10k ]]; then rm -rf ~/.oh-my-zsh/themes/powerlevel10k; fi
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# zsh-autosuggestions
if [[ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]]; then rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions; fi
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
if [[ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]]; then rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting; fi
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Tmux plugins
if [[ -d ~/.tmux/plugins/tpm ]]; then rm -rf ~/.tmux/plugins/tpm; fi
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Vim plugins and themes
if ! [[ -d ~/.vim ]]; then mkdir -p ~/.vim; fi
git clone https://github.com/flazz/vim-colorschemes.git ./vim-colorschemes
cp -r ./vim-colorschemes/colors ~/.vim/
rm -rf ./vim-colorschemes

# Backup old configs
mkdir -p ~/.config/backups
if [[ -f ~/.zshrc ]]; then cp ~/.zshrc ~/.config/backups/zshrc; fi
if [[ -f ~/.bashrc ]]; then cp ~/.bashrc ~/.config/backups/bashrc; fi
if [[ -f ~/.p10k.zsh ]]; then cp ~/.p10k.zsh ~/.config/backups/p10k.zsh; fi
if [[ -f ~/.vimrc ]]; then cp ~/.vimrc ~/.config/backups/vimrc; fi
if [[ -f ~/.tmux.conf ]]; then cp ~/.tmux.conf ~/.config/backups/tmux.conf; fi
if [[ -f ~/.tmux/tmux.remote.conf ]]; then cp ~/.tmux/tmux.remote.conf ~/.config/backups/tmux.remote.conf; fi

cp ./configs/zshrc ~/.zshrc
cp ./configs/bashrc ~/.bashrc
cp ./configs/p10k.zsh ~/.p10k.zsh
cp ./configs/vimrc ~/.vimrc
cp ./configs/tmux.conf ~/.tmux.conf
cp ./configs/tmux.remote.conf ~/.tmux/tmux.remote.conf

