#!/bin/bash
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/disloot/debian_conf/main/docker_install.sh)"
#安装git
apt update
apt install -y git curl
git config --global user.email "ly1564994969@outlook.com" \ 
&& git config --global user.name "ly"


#安装fzf fd ripgrep bat
apt install -y fzf fd-find ripgrep bat zsh
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
ln -s $(which fdfind) ~/.local/bin/fd    



#下载 .zshrc
cd ~
curl -o ~/.zshrc https://raw.githubusercontent.com/disloot/debian_conf/main/.zshrc

# 安装zsh oh-my-zsh 
apt install -y zsh zsh-syntax-highlighting zsh-autosuggestions autojump
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
zsh 


