#!/bin/bash

# 2017年03月18日 星期六 15时46分47秒
# execute the script as root please

# packages for dev
sudo apt-get install -y build-essential emacs git gnome-terminal libatk1.0-dev libbonoboui2-dev libcairo2-dev libcurl3 libcurl4-openssl-dev libexpat1-dev libexpat1-dev libgif-dev libgnome2-dev libgnomeui-dev libgnutls-dev libgtk2.0-dev libjpeg8-dev libncurses5-dev libpcre3-dev libpng++-dev libssh-dev libtiff5-dev libx11-dev libxaw7-dev libxpm-dev libxt-dev openssh-server python-dev ruby-dev xaw3dg-dev zsh exuberant-ctags libtool automake python-pip cmake libevent-dev vim tmux curl unrar

# for Lisp doc
sudo apt-get install -y hyper-spec sbcl sbcl-source sbcl-doc clisp

# silver searcher
git clone https://github.com/ggreer/the_silver_searcher.git
# oh my zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Emacs is now my favorite, latest vim is not needed, or I use Vim in Emacs :)
# cd ~
# git clone https://github.com/vim/vim.git
# cd vim
# ./configure --with-features=huge \
#             --enable-multibyte \
#             --enable-rubyinterp \
#             --enable-pythoninterp \
#             --with-python-config-dir=/usr/lib/python2.7/config \
#             --enable-perlinterp \
#             --enable-luainterp \
#             --enable-gui=gtk2 --enable-cscope --prefix=/usr
# make VIMRUNTIMEDIR=/usr/share/vim/vim74
# sudo make install


# python lib
pip install yapf flake8 jedi mycli

# gnome terminal theme
# dracular: https://github.com/Mayccoll/Gogh/blob/master/content/themes.md
wget -O xt  http://git.io/v3D8e && chmod +x xt && ./xt && rm xt

# download emacs 25 from https://www.gnu.org/software/emacs/download.html
echo "Downloading the latest emacs"
wget -c http://ftp.twaren.net/Unix/GNU/gnu/emacs/emacs-25.1.tar.gz

echo "Downloading gtags"
wget -c http://tamacom.com/global/global-6.5.5.tar.gz

# install c++doc e.g. libstdc++-4.9-doc

# install ycmd
git clone https://github.com/Valloric/ycmd.git

# haskell setting
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:hvr/ghc
sudo apt-get update
sudo apt-get install -y cabal-install-1.22 ghc-7.10.3
cat >> ~/.zshrc <<EOF
export PATH="\$HOME/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:\$PATH"
EOF
export PATH=~/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:$PATH

echo "You can build thest source code now, your highness"
