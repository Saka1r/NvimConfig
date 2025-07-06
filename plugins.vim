" Автоматическая установка плагинов при запуске
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugInstall --sync | source $MYVIMRC
    \| endif

" Начало блока плагинов
call plug#begin('~/.local/share/nvim/plugged')
	
    	" Основные плагины
	Plug 'powerman/vim-plugin-ruscmd'
	Plug 'mhinz/vim-startify'                  " Стартовая страница
	Plug 'powerman/vim-plugin-ruscmd'          " Русская раскладка команд
	Plug 'tpope/vim-endwise'                    " Автоматическое закрытие блоков if, do, def
	Plug 'neomake/neomake'                      " Проверка кода
	Plug 'airblade/vim-gitgutter'               " Git изменения в файлах
	Plug 'junegunn/fzf'                         " Фуззи поиск файлов
	Plug 'junegunn/fzf.vim'                     " Интеграция fzf с vim
	Plug 'tpope/vim-commentary'                 " Работа с комментариями
	Plug 'preservim/nerdtree'                   " Файловый менеджер NERDTree
	Plug 'ryanoasis/vim-devicons'               " Иконки файлов для NERDTree
	Plug 'Xuyuanp/nerdtree-git-plugin'          " Git статус в NERDTree
	Plug 'airblade/vim-gitgutter'               " Git подсветка
    Plug 'dstein64/nvim-scrollview'             " Scrollbar
    Plug 'voldikss/vim-floaterm'                " Встроенный терминал

    " Визуальные темы и оформление (оставляем только один)
	Plug 'itchyny/lightline.vim'                " Строка состояния (оставляем)
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

	" Другие полезные плагины
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    Plug 'neovim/nvim-lspconfig'

call plug#end()
"------- fzf config ----- 
"Ctrl+T, Ctrl+X, или Ctrl+V открыть файл
nnoremap <silent> <F2> :Files<CR>

" ----- vim-floaterm -----
let g:floaterm_width = 0.7 " установка длины терминала (окна)
let g:floaterm_height = 0.7 " установка высоты терминала (окна)
let g:floaterm_keymap_toggle = '<F4>' " F4 клавиша открытия терминала

"F3 открыть боковую панель с файловым менеджером
nnoremap <F3> :NERDTreeToggle<CR>

"Lua init
lua << EOF
require'lspconfig'.asm_lsp.setup{}
EOF

