# MY VIM CONFIGURATION
---

## Steps to get it

### 1. get repo
    git clone git@github.com:skinwalker3654/VIM_CONFIG
    cd VIM_CONFIG

### 2. Download Vim & clangd
    sudo apt update && sudo apt install vim clangd -y
    
### 3. Download vim-plug
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
### 4. Move file to home directory
    cp .vimrc ~/.vimrc
    
### 5. Downloads Plugs
    vim ~/.vimrc  #open vimrc file
    :PlugInstall  # End write that without changing enything else

### 6. Install coc Extensions
    :CocInstall coc-clangd  # now write that without changing enything

### 7. Save and Quite
    :wq  #to exit vim
    
