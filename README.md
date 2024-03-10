#### neovim config
## Build prerequisites:
<pre>
sudo apt-get install ninja-build gettext cmake unzip curl</pre>

## QuickStart:
# Install neovim
1. <pre>git clone https://github.com/neovim/neovim</pre>
2. <pre>cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo</pre>
3. <pre>cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb</pre>

# Setup config directory
<pre>
cd ~/.config && mkdir nvim && cd nvim && echo "require('yoon')" > init.lua && \
mkdir -p lua/yoon && cd lua/yoon && touch init.lua && nvim +w +so +q .</pre>

# Remap keybinds
<pre>
touch remap.lua && echo "vim.g.mapleader = ' '" > remap.lua && echo "vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)" >> remap.lua &&\
    nvim +w +so +q ./remap.lua</pre>

## Packer
# Download packer
<pre>
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim</pre>
# Config packer
<pre>
wget https://raw.githubusercontent.com/gougouidaroui/nvim/main/lua/yoon/packer.lua && nvim +w +so +PackerSync ./packer.lua
</pre>

## Setup plugins
# Set color theme for buffer
<pre>
cd ~/.config/nvim/ && mkdir -p after/plugin && cd after/plugin && wget https://raw.githubusercontent.com/gougouidaroui/nvim/main/after/plugin/colors.lua && nvim +so +q ./colors.lua
</pre>

# Telescope
<pre>
wget https://raw.githubusercontent.com/gougouidaroui/nvim/main/after/plugin/telescope.lua && nvim +so ./telescope.lua
</pre>

# Fugitive
<pre>
wget https://raw.githubusercontent.com/gougouidaroui/nvim/main/after/plugin/fugitive.lua && nvim +so ./fugitive.lua
</pre>

# Treesitter
<pre>
wget https://raw.githubusercontent.com/gougouidaroui/nvim/main/after/plugin/treesitter.lua && nvim +so ./treesitter.lua
</pre>

# Undotree
<pre>
wget https://raw.githubusercontent.com/gougouidaroui/nvim/main/after/plugin/undotree.lua && nvim +so ./undotree.lua
</pre>

# Harpoon
<pre>
wget https://raw.githubusercontent.com/gougouidaroui/nvim/main/after/plugin/harpoon.lua && nvim +so ./harpoon.lua
</pre>

## Setup LSP
# Download npm
<pre>
sudo apt install npm
</pre>
# Download python3.11-venv
<pre>
sudo apt install python3.11-venv
</pre>

# LSP config file
<pre>
wget https://raw.githubusercontent.com/gougouidaroui/nvim/main/after/plugin/lsp.lua && nvim +so ./lsp.lua
</pre>

make sure mason downloaded the following LSPs:
<pre>
html-lsp
lua-language-server
python-lsp-server
rust-analyzer
typescript-language-server
vim-language-server
</pre>
