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
    mkdir lua && cd lua && mkdir yoon && cd yoon && touch init.lua && nvim .</pre>
  open init.lua and :so 
