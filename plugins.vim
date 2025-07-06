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
	 
    " Визуальные темы и оформление (оставляем только один)
	Plug 'itchyny/lightline.vim'                " Строка состояния (оставляем)
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

	" Другие полезные плагины (по желанию)
	Plug 'voldikss/vim-floaterm'                " Встроенный терминал
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	
call plug#end()
"------- fzf config ----- 
"Ctrl+T, Ctrl+X, or Ctrl+V to open file in a new tab, split, or vsplit
nnoremap <silent> <F2> :Files<CR>
nnoremap <silent> <S-F2> :Buffers<CR>
" Shift + <F2> for alacritty and gnome-terminal

" ----- vim-floaterm -----
let g:floaterm_width = 0.7 " Sets the width of the terminal window
let g:floaterm_height = 0.7 " Sets the height of the terminal window
let g:floaterm_keymap_toggle = '<F4>' " F4 key toggles the terminal
" Run shell or Python script in floaterm by pressing F6 key in command or insert mode
autocmd FileType sh,python map <buffer> <F6> :w<CR>:FloatermNew! chmod ug+x <C-R>=shellescape(@%, 1)<CR> && bash -c ./<C-R>=shellescape(@%, 1)<CR><CR> bash -c 'read -p "Press Enter to exit..."' && exit<CR>
autocmd FileType sh,python imap <buffer> <F6> <esc>:w<CR>:FloatermNew! chmod ug+x <C-R>=shellescape(@%, 1)<CR> && bash -c ./<C-R>=shellescape(@%, 1)<CR><CR> bash -c 'read -p "Press Enter to exit..."' && exit<CR>
