" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""
" TODO:
" investigar bitstream vera como una posible fuente para terminal
" https://en.wikipedia.org/wiki/Bitstream_Vera
" investigar treesitter como sintax highlight
"
" ORDENAR EL DOCUMENTO!!!

filetype plugin on

" vim-plug

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin()

" Make sure you use single quotes

" Using a non-default branch
Plug 'arcticicestudio/nord-vim'

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'tikhomirov/vim-glsl'
Plug 'rust-lang/rust.vim'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'


Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'lervag/vimtex'

" Initialize plugin system
call plug#end()

" Plugin Configuration
" source ~/.config/nvim/plug-config/lsp-config.vim
" TODO: investigar esto 
luafile ~/.config/nvim/lua/plugins/nvim-cmp.lua

" Configuration for Indent Blankline 
luafile ~/.config/nvim/lua/plugins/indent-blankline.lua

" Elemental items:
"
set encoding=utf-8 " investigar para que puede ser útil esto
syntax enable 
set number
" set relativenumber
set tabstop=4
set shiftwidth=4

set linebreak

set scrolloff=16    " Me encanta, lineas máximas arriba o abajo del cursor 
set mouse=a  

set nocompatible    " Troubleshoot nord in alacritty and setting termguicolors 
if (has("termguicolors"))
	set termguicolors
endif


" Color Schemes



" nord-theme-overrides
augroup nord-theme-overrides
	autocmd!
	" Use 'nord7' as foreground color for Vim comment titles.
	autocmd ColorScheme nord highlight vimCommentTitle ctermfg=14 guifg=#8FBCBB
augroup END
" esto de arriba hace lo siguiente, colorea comentarios 
" TODO:
" FIXME:
" Solo comentarios específicos 

" All configuration variables must be set before the colorscheme activation command!
colorscheme nord


" Diccionario, corrector ortográfico.
autocmd FileType markdown,tex,latex set spell! 
set spelllang=en,es
set spellfile=~/.config/nvim/spell/diccionario.utf-8.add
" Modo de uso
" zg agrega palabras nuevas al diccionario
" ]s siguiente palabra con faltas
" [s anterior palabra con faltas
" zw marca malas palabras
" z= muestra listado de palabras recomendadas 

" Key_maps
runtime first_keymap.vim
