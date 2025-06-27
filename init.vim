" Инициализация менеджера плагинов
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
else
    runtime plugins.vim
    
" Включаем мышь
set mouse=a

" Включаем нумерацию строк
set number

" Включаем умное табулирование
set smarttab

" Устанавливаем размер табуляции в 2 пробела
set tabstop=2

" Включаем автоматический отступ
set autoindent

" Тема
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

" Настройка темы
colorscheme catppuccin-mocha

endif