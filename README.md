# Vimrc for Windows and Mac/Linux
## For Mac / Linux

Clone this repository
```
$ git clone https://github.com/tbrixen/dotVim.git ~/vimfiles
```

Add the following to `$VIMRUNTIME/.vimrc`
```
source ~/vimfiles/vimrc
```

Install `Vundle`
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/vimfiles/bundle/Vundle.vim
```

Open VIM and call
```
:PluginInstall
```

## For Windows (not tested)
To use Git and Curl on windows take a look at [Vundle for Windows](https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows)

Clone this repository
```
$ git clone https://github.com/tbrixen/dotVim.git %HOME%/vimfiles
```

Add following to `%HOME%/_vimrc`
```
source $HOME/vimfiles/vimrc
```

Install `Vundle`
```
$ git clone https://github.com/VundleVim/Vundle.vim.git %HOME%/vimfiles/bundle/Vundle.vim
```

Open VIM and call
```
:PluginInstall
```
