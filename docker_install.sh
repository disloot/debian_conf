#!/bin/bash
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/disloot/debian_conf/main/docker_install.sh)"
#安装git
apt update
apt install -y git curl

#安装fzf fd ripgrep bat
apt install -y fzf fd-find ripgrep bat zsh
mkdir -p root/.local/bin
ln -s /usr/bin/batcat root/.local/bin/bat
ln -s $(which fdfind) root/.local/bin/fd    



#下载 .zshrc
curl -o root/.zshrc https://raw.githubusercontent.com/disloot/debian_conf/main/.zshrc

# 安装zsh oh-my-zsh 
apt install -y zsh zsh-syntax-highlighting zsh-autosuggestions autojump
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

