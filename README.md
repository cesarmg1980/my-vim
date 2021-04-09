### This Repo Contains a Vim Configuration File (.vimrc)
-----------------------------------------
### Important: it is assumed that you already have installed vim's latest version.

#### Note: You can download Vim's Sources here https://github.com/vim/vim, and follow these instructions: https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source

----------------------------------------
### Once installed follow these Steps

- Download ".vimrc"

#### 1. Install Vundle

- Installation instructions here: https://github.com/VundleVim/Vundle.vim#about

#### 2. Install `vim.coc` Plugin

- Install `vim.coc` follow these instructions https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim

#### (Optional in case you don't want #2) 3. YouCompleteMe Plugin (you need to install some extra pkg before using `YouCompleteMe`)

Note: This plugin has been deactivated in `.vimrc` but you can use `coc` instead, but in case you want to use, activate in `.vimrc` and check the next step

- Follow the 'YouCompleteMe' installation instructions found here: https://github.com/ycm-core/YouCompleteMe

#### 4. Install Tagbar Plugin (you need to have installed exuberant-ctags or any other similar before using Tagbar)

- execute `sudo apt install exuberant-ctags`

### 5. Install the necessary fonts for powerline plugin

- Follow the steps here: https://powerline.readthedocs.io/en/latest/installation/linux.html#fonts-installation

### 6. Finally

- Open '.vimrc' and execute `:PluginInstall`

