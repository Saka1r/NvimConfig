" Инициализация менеджера плагинов
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
else
    runtime plugins.vim
endif



" Включаем мышь
set mouse=a

" Включаем нумерацию строк
set number

" Включаем умное табулирование
set smarttab

" Устанавливаем ширину таба в 4 пробела
set tabstop=4

" Устанавливаем ширину сдвига (отступа) в 4 пробела
set shiftwidth=4

" Используем пробелы вместо символа табуляции
set expandtab

" Автоматическое выравнивание при нажатии таба
set softtabstop=4

" Включаем автоматический отступ
set autoindent

" Настройка темы
colorscheme catppuccin-mocha

