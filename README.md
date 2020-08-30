# neovim
我的neovim配置
## 1.安装lugin-vim
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
## 2.下载配置文件
```
git clone https://github.com/moyueheng/nvim.git ~/.config/nvim
```
## 3.安装插件
```
vim ~/.confg/nvim/init.vim
```
``:PlugunInstall``等待安装完成
