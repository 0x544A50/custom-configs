# Resources:
# - https://www.ivaylopavlov.com/setting-up-windows-terminal-wsl-and-oh-my-zsh/#install_zs
# - https://linuxhint.com/use-zsh-auto-suggestions/
# - https://dev.to/andrenbrandao/terminal-setup-with-zsh-tmux-dracula-theme-48lm
# - Powerline fonts for WSL2: http://iamnotmyself.com/2017/04/15/setting-up-powerline-shell-on-windows-subsystem-for-linux/
# - https://github.com/jimeh/tmux-themepack

sudo apt update -y && sudo apt upgrade -y
sudo apt install zsh git zsh vim python3-pip ufw htop bat tmux

# ZSH and oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-hightlighting

# Tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Vim plugins and themes
mkdir -p ~/.vim
git clone https://github.com/flazz/vim-colorschemes.git 
cp ./vim-colorschemes/* ~/.vim/
rm -r ./vim-colorschemes

# Backup old configs
mkdir -p ~/.config/backups
cp ~/.zshrc ~/.config/backups/zshrc
cp ~/.bashrc ~/.config/backups/bashrc
cp ~/.p10k.zsh ~/.config/backups/p10k.zsh
cp ~/.vimrc ~/.config/backups/vimrc
cp ~/.tmux.conf ~/.config/backups/tmux.conf

cp ./zshrc ~/.zshrc
cp ./bashrc ~/.bashrc
cp ./p10k.zsh ~/.p10k.zsh
cp ./vimrc ~/.vimrc
cp ./tmux.conf ~/.tmux.conf

source ~/.zshrc

