# My NeoVim config

### NeoVim Version
NVIM v0.5.0

Build type: Release

LuaJIT 2.1.0-beta3


**use vim-plug manage plugins**： the `init.vim` will automatic download the vim-plug
- [fzf](https://github.com/junegunn/fzf.vim) Code and files fuzzy finder
- [nerdtree](https://github.com/preservim/nerdtree) A tree explorer
- [nerdtree syntax highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight) Add-on for NERDTree
- [vim-devicons](https://github.com/ryanoasis/vim-devicons) Icons for NERDTree
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter) Git integration
- [vim-airline](https://github.com/vim-airline/vim-airline) Status line
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) Themes for status line
- [vim-code-darl](https://github.com/tomasiser/vim-code-dark) Theme for nvim
- [syntastic](https://github.com/scrooloose/syntastic) Syntax check
- [deoplete](https://github.com/Shougo/deoplete.nvim) Async autocompletion
- [deoplete-jedi](https://github.com/deoplete-plugins/deoplete-jedi) Python autocompletion
- [python-mode](https://github.com/klen/python-mode) Cconverts nvim into a Python IDE
- [vim-polyglot](https://github.com/sheerun/vim-polyglot) Language pack
- [vim-autoclose](https://github.com/Townk/vim-autoclose) Automatically close parenthesis, etc
- [tagbar](https://github.com/majutsushi/tagbar) Class/module browser
- [vim-commentary](https://github.com/tpope/vim-commentary) Plugin for commenting


### Short Keys

- nerdtree toggle: `Ctrl + n`
- tagbar toggle: `F4`
- run python script: `F5`
- go to definition: `,g`
- rename: `,r`
- open doc `,d`
- commentary `,c`
- breakpoint `,b`
 
 **Split navigation**
 - horizontal split `,s`
 - vertical split `,vs`
 - left: `Ctrl + h`
 - down: `Ctrl + j`
 - up: `Ctrl + k`
 - rigth: `Ctrl + l`
 
 **Tab navigation**
 - new tab `.t`
 - next tab `Alt + l`
 - previous tab `Alt + h` 
### Usage 
Copy init.vim to ~/.config/nvim and run :PlugInstall in nvim.
