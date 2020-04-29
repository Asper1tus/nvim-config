call plug#begin("~/.config/nvim/plugged")

" FuzzyFinder (для быстрого поиска)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" NERDTree - быстрый просмотр файлов
Plug 'preservim/nerdtree'
" Дополнения для NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Иконки для NERDTree
Plug 'ryanoasis/vim-devicons'
" Дополнение для Git
Plug 'airblade/vim-gitgutter'
" Линия статуса
Plug 'itchyny/lightline.vim'
" Темы
Plug 'joshdick/onedark.vim'
" Проверка Синтаксиса
Plug 'scrooloose/syntastic' 
" Асмнхронное автодополнение
Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugins' }
" Автодополнение python
Plug 'deoplete-plugins/deoplete-jedi'
" Поддержка Python
Plug 'klen/python-mode'
" Языковой пакет 
Plug 'sheerun/vim-polyglot'
" Автозыкрытие скобок и т.д.
Plug 'Townk/vim-autoclose'
" Class/module browser
Plug 'majutsushi/tagbar'   
" Комментирование
Plug 'tpope/vim-commentary'
call plug#end()

" Делает nvim более функциональным
set nocompatible
set t_Co=256

" Убирает линию по центру экрана
set fillchars+=vert:\ 

" Нумерация строк
set number

" Установка нормальных табов
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Отключение свап файлов
set noswapfile

" Клавиши ----------------------------------------------------
let mapleader = ","

" Навигация по сплитам
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Тема для **NeoVim**
syntax on
colorscheme onedark

" Линия статуса: конфигурация
set noshowmode " Табличка --INSERT-- больше не выводится на экран
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Deoplete ----------------------------------------------------
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#custom#option = 1

let g:context_filetype#same_filetypes = {}
let g:context_filetype#same_filetypes._ = '_'

" TagBar ------------------------------------------------------
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии

" NERDTree ----------------------------------------------------
" Ctrl+n для вызова :NERDTree
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggl

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

" Python-mode 
" Запуск скрипта на Питоне
let g:pymode_run_bind = '<F5>'

let g:pymode_rope = 1
let g:pymode_rope_goto_definition_bind = '<leader>g'
let g:pymode_rope_rename_bind = '<leader>r'

let g:pymode_doc = 1
let g:pymode_doc_bind = '<leader>d'

" Commentary 
nmap <leader>c <Plug>CommentaryLine
nmap <D-/> <Plug>CommentaryLine
xmap <leader>c <Plug>Commentary
xmap <D-/> <Plug>Commentary
