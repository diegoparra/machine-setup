#!/bin/bash

function package(){
### Install packages

sudo add-apt-repository ppa:jonathonf/vim -y
sudo apt-get update

sudo apt-get install -y \
    git \
    vim \
    curl \
    wget \
    unzip \
    bash-completion \
    build-essential \
    libevent-dev \
    libncurses5-dev \
    mysql-client
}

function zsh(){
### Install zsh
sudo apt-get install zsh 
### Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

function sugest(){
### Install zsh sugestions
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
}


function docker(){
### Install Docker CE
sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo usermod -aG docker $USER

newgrp docker

}

function pip(){
### Install pip and modules
  sudo apt install -y python3-pip
  sudo pip install awscli
}

function tmux(){
### Install Tmux
sudo apt install -y tmux
}

function kube(){
  curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
  chmod +x ./kubectl
  sudo mv ./kubectl /usr/local/bin/kubectl

}

function fuzzy(){
  cd ${HOME}
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
}

function kubectx(){
  sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx 
  sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
  sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
}

function helm(){
	curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
	chmod 700 get_helm.sh
	./get_helm.sh
}

function eksctl(){
	curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

	sudo mv /tmp/eksctl /usr/local/bin
	eksctl version
}

function nvm(){
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
	bash
	
	nvm install --lts
}

function neovim(){
#https://www.linuxcapable.com/how-to-install-neovim-editor-on-ubuntu-22-04-lts/
	sudo add-apt-repository ppa:neovim-ppa/unstable -y
	sudo apt-get update
	sudo apt install neovim -y
	bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
}

function powerlevel10k(){
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}

function kitty(){
#https://sw.kovidgoyal.net/kitty/binary/
	curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
	ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
	cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
	cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
	sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
	sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
}

function vpn(){

	wget -q -O - https://d20adtppz83p9s.cloudfront.net/GTK/latest/debian-repo/awsvpnclient_public_key.asc | sudo apt-key add -

	echo "deb [arch=amd64] https://d20adtppz83p9s.cloudfront.net/GTK/latest/debian-repo ubuntu-20.04 main" | sudo tee /etc/apt/sources.list.d/aws-vpn-client.list

	sudo apt-get update

	sudo apt-get install awsvpnclient
}

function ripgrep(){
# https://github.com/BurntSushi/ripgrep#installation
	sudo apt-get install ripgrep -y
}

### NERD FONTS JETBRAINS
# https://www.nerdfonts.com/font-downloads


case $1 in

  package)
    package
  ;;

  zsh)
    zsh
  ;;

  docker)
    docker
  ;;

  pip)
    pip
  ;;

  tmux)
    tmux
  ;;

  kube)
    kube
  ;;

  sugest)
    sugest
  ;;
  
  helm)
    helm
  ;;
  
  eksctl)
    eksctl
  ;;

  vpn)
    vpn
  ;;
  
  
  all)
    package
    docker
    pip
    kube
    sugest
    zsh
    tmux
    fuzzy
    kubectx
    helm
    eksctl
    vpn
  ;;

  *)
  echo "Usage: setup.sh all"

esac
