# MY VIM CONFIGURATION

## build config
### get repo
    git clone git@github.com:skinwalker3654/VIM_CONFIG
    cd VIM_CONFIG

### 1. Download Vim
    sudo apt update && sudo apt install vim clangd -y
    
## 2. Download vim-plug
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
## 3. Move file to home directory
    cp .vimrc ~/.vimrc
    
## 4. Downloads plugs
    vim ~/.vimrc  #open vimrc file
    
    :PlugInstall  # End write that without changing enything else

## 5. Install coc extensions
    :CocInstall coc-clangd  # now write that without changing enything

## 6. Save and quite
    :wq  #to exit vim
    
