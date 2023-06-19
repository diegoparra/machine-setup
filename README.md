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

# Configuring NvChad
```
rm -rf ~/.cache/nvim ~/.local/share/nvim/ ~/.config/nvim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
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

## Run inside Neovim

```
MasonInstallAll

TSInstall go terraform
```

# Configuring shortcuts

```
cd ~
git clone https://github.com/diegoparra/machine-setup.git
```



```
rm -rf ~/.zshrc ; ln -s ${HOME}/machine-setup/zshrc ~/.zshrc
rm -rf ~/.alacritty.yml ; ln -s ${HOME}/machine-setup/alacritty/alacritty.yml ~/.alacritty.yml
rm -rf ~/.tmux.conf ; ln -s ${HOME}/machine-setup/tmux.conf ~/.tmux.conf
rm -rf ~/.config/kitty ; ln -s ${HOME}/machine-setup/kitty ~/.config/kitty

rm -rf ~/.config/nvim/lua/custom;  ln -s ${HOME}/machine-setup/nvchad/custom ~/.config/nvim/lua/custom
rm -rf ~/.config/nvim/lua/custom/chadrc.lua ; ln -s ${HOME}/machine-setup/nvchad/chadrc.lua ~/.config/nvim/lua/custom/chadrc.lua
rm -rf ~/.config/nvim/lua/custom/plugins.lua ; ln -s ${HOME}/machine-setup/nvchad/plugins.lua ~/.config/nvim/lua/custom/plugins.lua
rm -rf ~/.config/nvim/lua/custom/mappings.lua ; ln -s ${HOME}/machine-setup/nvchad/mappings.lua ~/.config/nvim/lua/custom/mappings.lua

rm -rf ~/.config/nvim/lua/custom/configs ; ln -s ${HOME}/machine-setup/nvchad/configs ~/.config/nvim/lua/custom/configs

```
