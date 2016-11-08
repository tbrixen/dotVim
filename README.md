# Vimrc for Windows and Mac/Linux
## For Mac / Linux

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
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Install download plugins (It complains about not being able to find the theme. This is ok)

```
$ vim +PluginInstall +qall
```

## For Windows (not tested)
To use Git and Curl on windows take a look at [Vundle for Windows](https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows)

Clone this repository
```
$ git clone https://github.com/tbrixen/dotVim.git ~/.vim
```

Add following to `$VIMRUNTIME/_vimrc`
```
source ~/.vim/vimrc
```

Install `Vundle`

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Install download plugins (It complains about not being able to find the theme. This is ok)

```
$ vim +PluginInstall +qall
```
