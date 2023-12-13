# nvim
Build prerequisites:
sudo apt-get install ninja-build gettext cmake unzip curl

quick start:
1.git clone https://github.com/neovim/neovim
2.cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
3.cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

cd ~/.config
mkdir nvim
cd nvim
touch init.lua && echo "require('yoon')" > init.lua
mkdir lua && cd lua && mkdir yoon && cd yoon
touch init.lua && echo "print('hello')"
nvim .
open init.lua and :so 
