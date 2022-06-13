#!/bin/bash

# Resources:
# - https://www.ivaylopavlov.com/setting-up-windows-terminal-wsl-and-oh-my-zsh/#install_zs
# - https://linuxhint.com/use-zsh-auto-suggestions/
# - https://dev.to/andrenbrandao/terminal-setup-with-zsh-tmux-dracula-theme-48lm
# - Powerline fonts for WSL2: http://iamnotmyself.com/2017/04/15/setting-up-powerline-shell-on-windows-subsystem-for-linux/
# - https://github.com/jimeh/tmux-themepack

# oh-my-zsh
if ! [[ -d ~/.oh-my-zsh ]]; then 
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended;
fi

# powerlevel10k
if ! [[ -d ~/.oh-my-zsh/themes/powerlevel10k ]]; then 
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k;
fi

# zsh-autosuggestions
if ! [[ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]]; then 
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
fi

# zsh-syntax-highlighting
if ! [[ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]]; then 
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
fi

# Tmux plugins
if ! [[ -d ~/.tmux/plugins/tpm ]]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;
fi

# Vim plugins and themes
if ! [[ -d ~/.vim ]]; then mkdir -p ~/.vim; fi
git clone https://github.com/flazz/vim-colorschemes.git ./vim-colorschemes
cp -r ./vim-colorschemes/colors ~/.vim/
rm -rf ./vim-colorschemes

# Backup old configs
if ! [[ -d ~/.config/backups ]]; then mkdir -p ~/.config/backups; fi
if [[ -f ~/.zshrc ]]; then cp ~/.zshrc ~/.config/backups/zshrc; fi
if [[ -f ~/.bashrc ]]; then cp ~/.bashrc ~/.config/backups/bashrc; fi
if [[ -f ~/.p10k.zsh ]]; then cp ~/.p10k.zsh ~/.config/backups/p10k.zsh; fi
if [[ -f ~/.vimrc ]]; then cp ~/.vimrc ~/.config/backups/vimrc; fi
if [[ -f ~/.tmux.conf ]]; then cp ~/.tmux.conf ~/.config/backups/tmux.conf; fi
if [[ -f ~/.tmux/tmux.remote.conf ]]; then cp ~/.tmux/tmux.remote.conf ~/.config/backups/tmux.remote.conf; fi

# Move new configs over
cp ./configs/zshrc ~/.zshrc
cp ./configs/bashrc ~/.bashrc
cp ./configs/p10k.zsh ~/.p10k.zsh
cp ./configs/vimrc ~/.vimrc
cp ./configs/tmux.conf ~/.tmux.conf
cp ./configs/tmux.remote.conf ~/.tmux/tmux.remote.conf

