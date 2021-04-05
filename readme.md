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
```shell
https://blog.csdn.net/lc_cc/article/details/103376325
sudo apt-get install ctags
sudo ctags -R  *
```

# taglist安装
```shell
https://blog.csdn.net/networkhunter/article/details/91952294
下载地址：http://www.vim.org/scripts/download_script.php?src_id=7701
1. 将/taglist_42.zip解压到nvim文件夹中
2. cd ./doc
3. nvim  打开nvim
4. :helptags .
5. :Tlist
```
