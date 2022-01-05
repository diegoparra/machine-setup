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
ln -s ${PWD}/machine-setup/zshrc ~/.zshrc
ln -s ${PWD}/machine-setup/tmux.conf ~/.tmux.conf
ln -s ${PWD}/machine-setup/init.vim ~/.config/nvim/init.vim
ln -s ${PWD}/machine-setup/coc-settings.json ~/.config/nvim/coc-settings.json
```
