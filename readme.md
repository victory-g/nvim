# nvim安装准备
```shell
sudo apt update && sudo apt upgrade && sudo apt-get install -y ninja-build gettext libtool libtool-bin \
autoconf automake cmake g++ pkg-config unzip git bash fzf wget libssl-dev libffi-dev locales curl ripgrep \
nodejs npm  clang-tools-11 clangd-11 python3-venv python3-pip

sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-11 100

# 设置npm源
npm config set registry https://registry.npm.taobao.org

# 设置pip源
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple/

sudo npm i -g neovim
sudo npm i -g bash-language-server
pip2 install pynvim ueberzug
pip3 install pynvim ueberzug

# 设置gem源
1. 查看当前源：gem sources
2. 换源：gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
3. 清空源缓存：gem sources -c
4. 更新源缓存：gem sources -u
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
2. 将taglist_42中的两个文件拷贝到nvim目录
3. cd ./doc
4. nvim       # 打开nvim
5. :helptags .
6. :Tlist
