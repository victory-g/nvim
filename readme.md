# nvim安装准备
```shell
sudo apt update && sudo apt upgrade && sudo apt-get install -y ninja-build gettext libtool libtool-bin \
autoconf automake cmake g++ pkg-config unzip git bash fzf wget libssl-dev libffi-dev locales curl ripgrep \
nodejs npm  clang-tools-11 clangd-11 python3-venv libjansson-dev 

sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-11 100

```shell
# soft
wget https://github.com/ninja-build/ninja/releases/download/v1.11.1/ninja-linux.zip
wget https://ftpmirror.gnu.org/libtool/libtool-2.4.6.tar.gz
wget http://ftp.gnu.org/gnu/autoconf/autoconf-latest.tar.xz
wget https://ftp.gnu.org/gnu/automake/automake-1.16.5.tar.gz
wget https://github.com/Kitware/CMake/releases/download/v3.26.3/cmake-3.26.3-linux-x86_64.tar.gz
wget https://mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-12.2.0/gcc-12.2.0.tar.gz (./configure --prefix=/data/xuguang/mySoft/install/myGcc  --with-mpfr=/data/xuguang/mySoft/install/mpfr/ --with-isl=/data/xuguang/mySoft/install/isl/ --with-gmp=/data/xuguang/mySoft/install/gmp/  -with-mpc=/data/xuguang/mySoft/install/mpc/ --enable-checking=release --enable-languages=c,c++ --disable-multilib)
wget https://pkg-config.freedesktop.org/releases/pkg-config-0.29.2.tar.gz
wget https://sourceforge.net/projects/infozip/files/UnZip%206.x%20%28latest%29/UnZip%206.0/unzip60.tar.gz
wget https://sourceforge.net/projects/zsh/files/zsh/5.9/zsh-5.9.tar.xz
wget https://nodejs.org/dist/v18.16.0/node-v18.16.0-linux-x64.tar.xz
wget https://github.com/nodejs/node/archive/refs/tags/v20.0.0.tar.gz (gcc -march=native)
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-16.0.1/clang+llvm-16.0.1-aarch64-linux-gnu.tar.xz (src wget https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-16.0.2.tar.gz)
wget https://github.com/clangd/clangd/releases/download/snapshot_20230416/clangd_indexing_tools-linux-snapshot_20230416.zip
wget https://github.com/clangd/clangd/releases/download/16.0.2/clangd-linux-16.0.2.zip
wget https://www.python.org/ftp/python/3.10.11/Python-3.10.11.tar.xz
wget https://invisible-island.net/datafiles/current/ncurses.tar.gz (./configure --prefix=/data/xuguang/mySoft/install/ncurses/ --with-shared --without-debug --enable-widec)
wget https://mirrors.tuna.tsinghua.edu.cn/pypi/web/packages/66/56/668c8cd053b370339070eef83d104af0b4e0b2c9dc230f30e70b49ea3e03/ament-flake8-1.2.tar.gz --no-check-certificate
git clone https://github.com/ranger/ranger.git
git clone https://github.com/ohmyzsh/ohmyzsh
git clone https://github.com/junegunn/fzf.git
git clone https://github.com/npm/cli.git
git clone https://github.com/facebook/zstd.git (wget https://github.com/facebook/zstd/releases/download/v1.5.5/zstd-1.5.5.tar.gz)
git clone https://github.com/lz4/lz4.git
git clone https://github.com/llvm/llvm-project.git
git clone https://github.com/neovim/neovim.git (git clone https://gitee.com/shiqiu1992/stone_nvim.git)
curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz


#gcc
wget http://gcc.gnu.org/pub/gcc/infrastructure/gmp-6.2.1.tar.bz2
wget http://gcc.gnu.org/pub/gcc/infrastructure/mpfr-4.1.0.tar.bz2
wget http://gcc.gnu.org/pub/gcc/infrastructure/mpc-1.2.1.tar.gz
wget http://gcc.gnu.org/pub/gcc/infrastructure/isl-0.24.tar.bz2 
wget https://ftp.gnu.org/pub/gnu/glibc/glibc-2.37.tar.xz
wget http://ftp.gnu.org/pub/gnu/make/make-4.4.1.tar.gz
wget https://tukaani.org/xz/xz-5.2.5.tar.gz (wget https://tukaani.org/xz/xz-5.4.2.tar.gz)


# pip
wget https://mirrors.aliyun.com/pypi/packages/7a/01/2d0898ba6cefbe2736283ee3155cba1c602de641ca5667ac55a0e4857276/pynvim-0.4.3.tar.gz

# npm

# llvm
mkdir build && cd build
myCmake ../ -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=/data/xuguang/mySoft/install/myGcc/bin/g++  -DCMAKE_C_COMPILER=/data/xuguang/mySoft/install/myGcc/bin/gcc

# cland
export LLVM_DIR=/data/xuguang/mySoft/down/llvm-project-llvmorg-16.0.2/llvm/build/lib/cmake
myCmake ../ -DCMAKE_PREFIX_PATH=/data/xuguang/mySoft/down/llvm-project-llvmorg-16.0.2/llvm/build/ -DCMAKE_CXX_COMPILER=/data/xuguang/mySoft/install/myGcc/bin/g++ -DCMAKE_C_COMPILER=/data/xuguang/mySoft/install/myGcc/bin/gcc
```

# 设置gem源
1. 查看当前源：gem sources
2. 换源：gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
3. 清空源缓存：gem sources -c
4. 更新源缓存：gem sources -u

# 设置npm源
npm config set registry https://registry.npmmirror.com
npm get registry

sudo npm i -g neovim --registry=https://registry.npmmirror.com

                     
# 设置pip源
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple/

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
http://ctags.sourceforge.net/
$ git clone https://github.com/universal-ctags/ctags.git --depth=1
$ cd ctags
$ ./autogen.sh
$ ./configure
$ make
$ sudo make install
$ ctags --list-features
$ sudo ctags -R  *

或

$ https://blog.csdn.net/lc_cc/article/details/103376325
$ sudo apt-get install ctags
$ sudo ctags -R  *
```

# 剪切板安装
$ sudo apt install xsel 或 xclip


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

# lazyVim
## init.lua
```shell
# init.lua中添加self.myConfig
~/.config/nvim/init.lua

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("self.myConfig")
```
## self.myConfig
```shell
1. 在~/.config/nvim/lua下创建self文件夹
2. 将myConfig.lua拷贝到self文件夹
```
