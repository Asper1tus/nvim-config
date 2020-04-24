call plug#begin("~/.config/nvim/plugged")

" FuzzyFinder (для быстрого поиска)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" NERDTree - быстрый просмотр файлов
Plug 'preservim/nerdtree'
" Сoc - автодополнение 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Дополнения для NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
" Дополнение для Git, а также иконки для NERDTree
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
" Линия статуса
Plug 'itchyny/lightline.vim'
" Темы
Plug 'joshdick/onedark.vim'
" Проверка Синтаксиса
Plug 'scrooloose/syntastic' 
" Асмнхронное автодополнение
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
" Автодополнение python
Plug 'deoplete-plugins/deoplete-jedi'
" Поддержка Python
Plug 'klen/python-mode'
" Языковой пакет 
Plug 'sheerun/vim-polyglot'
" Автозыкрытие скобок и т.д.
Plug 'Townk/vim-autoclose'
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
inoremap jkl <ESC>

" Запуск скрипта на Питоне
map <F5> :w\|!python3 %<cr>
imap <F5> <Esc><F5>

" Навигация по сплитам
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" В нормальном режиме Ctrl+n вызывает :NERDTree
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggl

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

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
