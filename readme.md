# nvim安装准备
```shell
sudo apt update && sudo apt upgrade && sudo apt-get install -y ninja-build gettext libtool libtool-bin \
autoconf automake cmake g++ pkg-config unzip git bash fzf wget libssl-dev libffi-dev locales curl ripgrep \
nodejs npm  clang-tools-11 clangd-11

sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-11 100

sudo npm i -g neovim
sudo npm i -g bash-language-server
pip2 install pynvim
pip3 install pynvim
```

# 安装vim-plug
```shell
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

# ctags安装使用
```
https://blog.csdn.net/lc_cc/article/details/103376325
sudo apt-get install ctags
sudo ctags -R  *
```
