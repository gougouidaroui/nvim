#### neovim config
# Build prerequisites:
<pre>
sudo apt-get install ninja-build gettext cmake unzip curl</pre>

# QuickStart:
1. <pre>git clone https://github.com/neovim/neovim</pre>
2. <pre>cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo</pre>
3. <pre>cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb</pre>

# Setup config directory
<pre>
cd ~/.config && mkdir nvim && cd nvim && echo "require('yoon')" > init.lua && \
mkdir lua && cd lua && mkdir yoon && cd yoon && touch init.lua && nvim +w +so +q .</pre>

# Remap keybinds
<pre>
  touch remap.lua && echo "vim.g.mapleader = ' '" > remap.lua && echo "vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)" >> remap.lua &&\
    nvim +w +so +q ./remap.lua</pre>

# Download packer
<pre>
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim</pre>
# Config packer
<pre>
  wget https://raw.githubusercontent.com/gougouidaroui/nvim/main/lua/yoon/packer.lua && nvim +w +so +PackerSync ./packer.lua
</pre>
