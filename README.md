# vim-scene

Scene filetype detection and syntax highlighting for Vim.

![](https://raw.githubusercontent.com/wiki/EvanQuan/vim-scene/example1.png)
![](https://raw.githubusercontent.com/wiki/EvanQuan/vim-scene/example2.png)
![](https://raw.githubusercontent.com/wiki/EvanQuan/vim-scene/example3.png)

## Installation

Install using your favorite package manager, or use Vim's built-in package
support:

#### Vim 8 Native Package Manager

```bash
mkdir ~/.vim/pack/plugin/start/vim-scene
git clone https://github.com/EvanQuan/vim-scene.git ~/.vim/pack/plugin/start/vim-scene
```

#### [Vim-Plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'EvanQuan/vim-scene'` to your `vimrc` file.
2. Reload your `vimrc` or restart.
3. Run `:PlugInstall`

#### [Vundle](https://github.com/VundleVim/Vundle.vim)

1. Add `Plugin 'EvanQuan/vim-scene'` to your `vimrc` file.
2. Reload your `vimrc` or restart.
3. Run `:BundleInstall`

#### [NeoBundle](https://github.com/Shougo/neobundle.vim)

1. Add `NeoBundle 'EvanQuan/vim-scene'` to your `vimrc` file.
2. Reload your `vimrc` or restart.
3. Run `:NeoUpdate`

#### [Pathogen](https://github.com/tpope/vim-pathogen)

```bash
git clone https://github.com/EvanQuan/vim-scene.git ~/.vim/bundle/vim-scene
```

## Extra setup

If you are a using [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
add this to your `vimrc`:

```vim
let g:NERDCustomDelimiters = {
    \ 'scene': { 'left': '#' }
\ }
```
