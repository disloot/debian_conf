#!/bin/bash
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/disloot/debian_conf/main/docker_install.sh)"
#安装git
apt install git curl

#安装fzf fd ripgrep bat
apt install fzf fd-find ripgrep bat zsh
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
ln -s $(which fdfind) ~/.local/bin/fd    



#下载 .zshrc
curl -O -L https://raw.githubusercontent.com/disloot/debian_conf/main/.zshrc

# 安装zsh oh-my-zsh 
apt install zsh zsh-syntax-highlighting zsh-autosuggestions autojump
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

