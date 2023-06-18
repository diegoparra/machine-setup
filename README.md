# machine-setup


# Pre req

- nvm

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

```

```
 nvm install node lts
```

- python3

```
python3 -m ensurepip --upgrade
```

```
pip3 install pynvim
```
- Timer
[Timer](https://github.com/caarlos0/timer)
```
echo 'deb [trusted=yes] https://repo.caarlos0.dev/apt/ /' | sudo tee /etc/apt/sources.list.d/caarlos0.list
sudo apt update
sudo apt install timer
```


## Golang Tools
[goimports-reviser](https://github.com/incu6us/goimports-reviser)
go install -v github.com/incu6us/goimports-reviser/v3@latest


[gofumpt](https://github.com/mvdan/gofumpt)
go install mvdan.cc/gofumpt@latest

[golines](https://github.com/segmentio/golines)
go install github.com/segmentio/golines@latest

[delve](https://github.com/go-delve/delve)
go install github.com/go-delve/delve/cmd/dlv@latest


# Configuring shortcuts

```
cd ~
git clone https://github.com/diegoparra/machine-setup.git
```

```
rm -rf ~/.zshrc ; ln -s ${HOME}/machine-setup/zshrc ~/.zshrc
rm -rf ~/.alacritty.yml ; ln -s ${HOME}/machine-setup/alacritty/alacritty.yml ~/.alacritty.yml
rm -rf ~/.tmux.conf ; ln -s ${HOME}/machine-setup/tmux.conf ~/.tmux.conf
rm -rf ~/.config/i3/config ; ln -s ${HOME}/machine-setup/i3/config ~/.config/i3/config
rm -rf ~/.config/i3status/config ; ln -s ${HOME}/machine-setup/i3status/config ~/.config/i3status/config
rm -rf ~/.config/kitty ; ln -s ${HOME}/machine-setup/kitty ~/.config/kitty
rm -rf ~/.config/lvim/config.lua ; ln -s ${HOME}/machine-setup/lvim/config.lua  ~/.config/lvim/config.lua
rm -rf ~/.config/nvim/lua ; ln -s ${HOME}/machine-setup/lazy-vim/lua  ~/.config/nvim/lua

```
