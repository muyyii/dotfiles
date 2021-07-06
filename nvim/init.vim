
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
" set rtp+=/usr/local/opt/fzf
let mapleader=","

call plug#begin('~/.vim/plugged')
" Plug 'kien/ctrlp.vim' " el viejo y confiable C-P
"Plug 'vim-airline/vim-airline' " airline
"Plug 'vim-airline/vim-airline-themes' " themes para airline
"Plug 'chrisbra/csv.vim' " comandos para el csv
"Plug 'vim-python/python-syntax' " syntax python
Plug 'jelera/vim-javascript-syntax' " syntax para js
"Plug 'tmhedberg/SimpylFold' " foldea python bien
"Plug 'scrooloose/nerdcommenter' " plugin para comentar
"Plug 'Raimondi/delimitMate' " auto-paréntesis
"Plug 'godlygeek/tabular' " plugin para pandoc y csv
"Plug 'plasticboy/vim-markdown' " plugin para pandoc y mk
"Plug 'rafi/awesome-vim-colorschemes' " colorscheme
"Plug 'wadackel/vim-dogrun'
"Plug 'ncm2/ncm2' " autocomplete
"Plug 'roxma/nvim-yarp' " autocomplete
"Plug 'ncm2/ncm2-jedi' " completation source python
"Plug 'justinmk/vim-syntax-extra' " completation source c
"Plug 'tpope/vim-surround' " Surround
"Plug 'szymonmaszke/vimpyter' " Jupyter Notebook Vim
"Plug 'tpope/vim-fugitive' " Git plugin
"Plug 'junegunn/fzf.vim' " Fuzzy finder
" Plug 'sirver/ultisnips' " Better snippets (suscribe Tab)
Plug 'norcalli/nvim-colorizer.lua'
Plug 'preservim/nerdtree' " Old school files tree esta bueno a ver si lo hago andar 

" Plug 'file:///Users/bersp/.vim/plugged/vimlab' " VimLab
" Plug 'file:///Users/bersp/.vim/plugged/ddvim' " D&D Plug
call plug#end()

" Esto siguiente no es mas de berna esto es mio... de luki 
" Intentando setear VundleVim para pluggins de vundle 
set nocompatible 			" be iMplroved, required
filetype off 				" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here'
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tikhomirov/vim-glsl' " syntax para glsl
Plugin 'NLKNguyen/papercolor-theme'

" All of your Plugins must be added before the following line
call vundle#end()			" required
filetype plugin indent on	" required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
"	highlight ColorColumn ctermbg=256 guibg=#303030
"	autocmd BufRead,BufNewFile * let &colorcolumn=join(range(999,999),',')
"	autocmd BufRead,BufNewFile *.py let &colorcolumn=join(range(79,999),',')
"	autocmd BufRead,BufNewFile *.py syntax match pythonFunction /\v([^[:cntrl:][:space:][:punct:][:digit:]]|_)([^[:cntrl:][:punct:][:space:]]|_)*\ze(\s?\()/

" Javascript
"	autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Some basics:
"	filetype plugin on
	syntax on
	set encoding=utf-8
	set number " relativenumber
	set foldlevel=99
	set nohlsearch
	set path+=**
	set hid
	set mouse=a
	set inccommand=nosplit
	set tabstop=4
	set shiftwidth=4
	set gdefault

set rtp+=/.vim/colors/
" Colors
	set termguicolors
"	set background=dark
"	colorscheme PaperColor
	" hi Normal guibg=NONE ctermbg=NONE
	" map <Leader>l :let &background = ( &background == "dark"? "light" : "dark" )<CR>
"	map <Leader>l :let &background = ( &background == "dark"? "light" : "dark" )<CR>

colorscheme shades-of-pastel
colorscheme PaperColor


" NVIM COLORIZER LUA CONFIG 
" lua require'colorizer'.setup()
luafile $HOME/.config/nvim/lua/plug-colorizer.lua

" Enable autocompletion in :options :
"	set wildmode=longest,list,full

" Splits open at the bottom and right
"	set splitbelow splitright

" Cursorline
"	set cursorline

" Visual mode pressing * or # searches for the current selection
"	vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
"	vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Return to last edit position when opening files
"	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Set 7 lines to the cursor - when moving vertically using j/k
"	set so=7

" Ignore compiled files
"	set wildignore=*.o,*~,*.pyc

" Smartcase
"	set ignorecase
"	set smartcase

" Spell check
"	autocmd FileType markdown setlocal spell spelllang=es,en

" Renames
"   autocmd BufNewFile,BufReadPost *.pdc set filetype=markdown
"   autocmd BufNewFile,BufReadPost *.vifm set filetype=vim

" Automatically deletes all trailing whitespace on save.
"	autocmd BufWritePre * %s/\s\+$//e

" Set undodir persist
"	if !isdirectory("/tmp/undo-dir")
"		call mkdir("/tmp/undo-dir", "", 0700)
"	endif
"	set undodir=/tmp/.vim-undo-dir
"	set undofile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF
"	nmap <C-f> :Files<CR>
"	nmap <Leader>/ :Lines<CR>
"	nmap <Leader>rg :Rg <C-r><C-w><CR>
"	command! -bang -nargs=* Rg
"	  \ call fzf#vim#grep(
"	  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"	  \   fzf#vim#with_preview(), <bang>0)

" Airline
"	let g:airline_theme='minimalist'

" Pandoc (vim-markdown)
"	set conceallevel=3

" Python-syntax
"	let g:python_highlight_indent_errors = 0
"	let g:python_highlight_space_errors = 0
"	let g:python_highlight_all = 1

" Nerdcommenter
"	let g:NERDSpaceDelims = 1

" Ultisnips
"	" let g:UltiSnipsExpandTrigger = "<tab>"
"	" let g:UltiSnipsJumpForwardTrigger = "<tab>"
"	" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ncm2 - autocompletation
"   inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
"	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"	autocmd BufEnter * call ncm2#enable_for_buffer()
"	set completeopt=noinsert,menuone,noselect

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change windows with tab
"	nmap <Tab> <C-w>w

" Yank and Pase from copyboard
"	map <Leader>y "+y
"	map <Leader>p "+p

" Split navigation
"	map <C-j> <C-w>j
"	nmap <Up> <Nop>
"	vmap <Up> <Nop>

"	map <C-k> <C-w>k
"	nmap <Down> <Nop>
"	vmap <Down> <Nop>

"	map <C-h> <C-w>h
"	nmap <Left> <Nop>
"	vmap <Left> <Nop>

"	map <C-l> <C-w>l
"	nmap <Right> <Nop>
"	vmap <Right> <Nop>

" Activar NERDTreeToggle
nnoremap <F5> :NERDTreeToggle<CR> 

" Sustitude/replace word under de cursor
"	nmap <Leader>s :%s/\<<C-r><C-w>\>//<Left>
"	vmap <Leader>s :s/\<\>/SS<Left><Left><Left><Left><Left>

" Highlight search results
"	nmap <Leader>h :set hls! <CR> :echo "Highlight search change" <CR>h

" Open terminal in the same path
"	map <Leader><S-t> :!open -a iTerm . <CR> <CR>

" Compile
"	autocmd FileType python nmap <buffer> <Leader><CR> :update<bar>!python3 %<CR>
"	autocmd FileType c nmap <buffer> <Leader><CR> :update<bar>!clang % && ./a.out<CR>
	" autocmd FileType markdown nmap <buffer> <Leader><CR> :update<bar>!pandoc -s --template=template.latex --listings % -o %<.pdf<CR>
"	autocmd FileType markdown nmap <buffer> <Leader><CR> :update<bar>!pandoc -s --variable urlcolor=MidnightBlue % -o %<.pdf<CR>
"	autocmd FileType arduino nmap <buffer> <Leader><CR> :update<bar>vs<Space>\|<Space>terminal platformio -f -c vim run --target upload<CR>i
"	autocmd FileType matlab nmap <buffer> <Leader><CR> :update<bar>!octave --persist %<CR>

" Second Compile
"	autocmd FileType python nmap <buffer> <Leader><Leader><CR> :update<bar>vs<Space>\|<Space>terminal ipython -i -c "\%run %"<CR>i
"	autocmd FileType markdown nnoremap <buffer> <Leader><Leader><CR> :update<bar>!open %<.pdf<CR><CR>
"	autocmd FileType arduino nmap <buffer> <Leader><Leader><CR> :update<bar>vs<Space>\|<Space>terminal platformio device monitor<CR>i
"	autocmd FileType matlab nmap <buffer> <Leader><Leader><CR> :update<bar>vs<Space>\|<Space>terminal octave --persist %<CR><S-g>

" Normal-mode in Terminal-mode
"	tnoremap <Esc> <C-\><C-n>

" Resize windows
"	nmap <C-w>+ :vertical resize 82<CR>
"	nmap <C-w>- :vertical resize 60<CR>

" Tabular csv
"	autocmd FileType csv nmap <buffer> <Leader><Leader> :Tabularize /,<CR>

" Move in columns csv
"	autocmd FileType csv map <buffer> <Right> f,l
"	autocmd FileType csv map <buffer> <Left> hT,
"	autocmd FileType csv map <buffer> <Down> j
"	autocmd FileType csv map <buffer> <Up> k


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Quick file jump
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Edit init.vim
"	nmap \\init :e<Space>~/.config/nvim/init.vim<CR>
	"
" Edit snippets file
"	nmap \\snip :e<Space>~/.config/nvim/snippets.vim<CR>
"	nmap \\ulti :e<Space>~/.config/nvim/UltiSnips/<CR>

" Edit defLabo
"	nmap \\labo :vs<Space>/usr/local/lib/python3.7/site-packages/defLabo.py<CR>
