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



# Configuring shortcuts

```
cd ~
git clone https://github.com/diegoparra/machine-setup.git
```

```
rm -rf ~/.zshrc ; ln -s ${HOME}/machine-setup/zshrc ~/.zshrc
rm -rf ~/.tmux.conf ; ln -s ${HOME}/machine-setup/tmux.conf ~/.tmux.conf
rm -rf ~/.config/nvim/init.vim ; ln -s ${HOME}/machine-setup/init.vim ~/.config/nvim/init.vim
rm -rf ~/.config/nvim/coc-settings.json ; ln -s ${HOME}/machine-setup/coc-settings.json ~/.config/nvim/coc-settings.json
rm -rf ~/.config/i3/config ; ln -s ${HOME}/machine-setup/i3/config ~/.config/i3/config
rm -rf ~/.config/i3status/config ; ln -s ${HOME}/machine-setup/i3status/config ~/.config/i3status/config
rm -rf ~/.config/kitty ; ln -s ${HOME}/machine-setup/kitty ~/.config/kitty
rm -rf ~/.config/lvim ; ln -s ${HOME}/machine-setup/lvim ~/.config/lvim

```
