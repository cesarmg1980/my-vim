### This Repo Contains a Vim Configuration File (.vimrc)
-----------------------------------------
### Important: it is assumed that you already have installed vim's latest version.

#### Note: You can download Vim's Sources here https://github.com/vim/vim, and follow these instructions: https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source

----------------------------------------
### Once installed follow these Steps

- Download ".vimrc"

#### 1. Install Vundle

- Installation instructions here: https://github.com/VundleVim/Vundle.vim#about
    
#### 2. Install the required fonts for powerline plugin

- Follow the steps here: https://powerline.readthedocs.io/en/latest/installation/linux.html#fonts-installation

#### 3. Install requirements for  Tagbar Plugin. 

- execute `sudo apt install exuberant-ctags`

#### 4. Install `node.js`, required for `coc-nvim`

- Follow these instructions https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim

#### 5. Install Vim's Plugins

- Open '.vimrc' and execute `:PluginInstall`

#### 6. Install any `coc` language extension required (i.e. Python, C++, etc.)

- Follow the next link to install `coc` extensions https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#install-extensions

After installation of a particular extension, if you need it to behave different than default you can customize it.

- Open Vim and execute `:CocConfig` this will create the necessary `~/.config/nvim/coc-settings.json`
- Add any custom configuration to this file check this link for reference: https://github.com/pappasam/coc-jedi#configuration
