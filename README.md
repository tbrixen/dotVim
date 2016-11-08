# Vimrc for windows and mac/linux
## For mac/linux

Clone this repository
```
$ git clone https://github.com/tbrixen/dotVim.git ~/.vim
```

Create symlink
```
$ ln -sfn ~/.vim/vimrc .vimrc
```

Install `Vundle`

```
$ mkdir ~/.vim/bundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Install download plugins (It complains about not being able to find the theme. This is ok)

```
$ vim +PluginInstall +qall
```
