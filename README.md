# My NeoVim config

### NeoVim Version
NVIM v0.4.3

Build type: RelWithDebInfo 

LuaJIT 2.0.5

### Dependences
```
sudo apt install snapd
sudo snap install pyls
```

**use vim-plug manage plugins**： the `init.vim` will automatic download the vim-plug
- [fzf](https://github.com/junegunn/fzf.vim) Code and files fuzzy finder
- [nerdtree](https://github.com/preservim/nerdtree) A tree explorer
- [nerdtree syntax highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight) Add-on for NERDTree
- [vim-devicons](https://github.com/ryanoasis/vim-devicons) Icons for NERDTree
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter) Git integration
- [lightline](https://github.com/tchyny/lightline.vim) Status line
- [onedark](https://github.com/joshdick/onedark.vim) Theme for nvim
- [syntastic](https://github.com/scrooloose/syntastic) Syntax check
- [deoplete](https://github.com/Shougo/deoplete.nvim) Async autocompletion
- [deoplete-jedi](https://github.com/deoplete-plugins/deoplete-jedi) Python autocompletion
- [python-mode](https://github.com/klen/python-mode) Cconverts nvim into a Python IDE
- [vim-polyglot](https://github.com/sheerun/vim-polyglot) Language pack
- [vim-autoclose](https://github.com/Townk/vim-autoclose) Automatically close parenthesis, etc
- [tagbar](https://github.com/majutsushi/tagbar) Class/module browser
- [LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim) Code Diagnostics, formatting
- [vim-commentary](https://github.com/tpope/vim-commentary) Plugin for commenting


### Short Keys

- nerdtree toggle: `Ctrl + n`
- tagbar toggle: `F4`
- LanguageClient context menu: `F2`
- run python script: `F5`
- go to definition: `<leader>d`
- rename: `<leader>r`
- commentary `<leader>c`
 
 **split navigation**
 - left: `Ctrl + h`
 - down: `Ctrl + j`
 - up: `Ctrl + k`
 - rigth: `Ctrl + l`
 
### Usage 
Copy init.vim to ~/.config/nvim and run :PlugInstall in nvim.
