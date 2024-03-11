#!/bin/bash
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/disloot/debian_conf/main/install.sh)"
#安装git
sudo apt update
sudo apt install git curl
git config --global user.email "ly1564994969@outlook.com" \ 
&& git config --global user.name "ly"

#安装fzf fd ripgrep bat
sudo apt install fzf fd-find ripgrep bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
ln -s $(which fdfind) ~/.local/bin/fd    



#下载 .zshrc
cd ~
curl -o ~/.zshrc https://raw.githubusercontent.com/disloot/debian_conf/main/.zshrc

# 安装zsh oh-my-zsh 
sudo apt install zsh zsh-syntax-highlighting zsh-autosuggestions autojump
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


