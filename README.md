# gridlabd.vim

vim plugin for gridlabd syntax highlighting

![](./screenshot.png)

# Install

### Using Vundle (recommended)

If you already have Vundle working then skip [Step 1](#vundle-step1) and go to [Step 2](#vundle-step2).

<a name="vundle-step1"></a>

#### Step 1: Install Vundle

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

<a name="vundle-step2"></a>

#### Step 2: Configure Plugins

Next you *need* to add the following to your `~/.vimrc`:

```vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

""""""""""""""" Add only this line if you already use Vundle """""""""""""""""""
Plugin 'kdheepak/gridlabd.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
```

This sets up vim to use `Vundle` and the plugin `gridlabd.vim`.

Next, type the following inside vim and hit enter.

```vim
:PluginInstall
```

If you want to update all plugins, type the following inside vim and hit enter.

```vim
:PluginUpdate
```

### Using Pathogen

If you already have Pathogen working then skip [Step 1](#pathogen-step1) and go to [Step 2](#pathogen-step2).

<a name="pathogen-step1"></a>

#### Step 1: Install pathogen.vim

```sh
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Next you *need* to add this to your `~/.vimrc`:
```vim
execute pathogen#infect()
```

<a name="pathogen-step2"></a>

#### Step 2: Install gridlabd.vim as a Pathogen bundle

You now have pathogen installed and can put gridlabd.vim into `~/.vim/bundle` like
this:
```sh
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/kdheepak/gridlabd.vim.git
```
Quit vim and start it back up to reload it.

If you get an error when you do this, then you probably didn't install
Pathogen right. Go back to [Step 1](#pathogen-step1) and make sure you did the
following:

1. Created both the `~/.vim/autoload` and `~/.vim/bundle` directories.
2. Added the `execute pathogen#infect()` line to your `~/.vimrc` file
3. Did the `git clone` of gridlabd.vim inside `~/.vim/bundle`
4. Have permissions to access all of these directories.
