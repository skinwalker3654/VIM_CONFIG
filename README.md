# MY VIM CONFIGURATION

## build config

### 1. Download Vim
    ```bash
    sudo apt update && sudo apt install vim clangd -y
    
## 2. Download vim-plug
    ```bash
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
## 3. Move file to home directory
    ```bash
    cp .vimrc ~/.vimrc
    
## 4. Downloads plugs
    ```bash
    vim ~/.vimrc  #open vimrc file
    
    ```bash
    :PlugInstall  # End write that without changing enything else

## 5. Install coc extensions
    ```bash
    :CocInstall coc-clangd  # now write that without changing enything

## 6. Save and quite
    ```bash
    :wq  #to exit vim
    
