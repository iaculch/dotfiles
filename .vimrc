execute pathogen#infect()

" Base 16 colourscheme
set background=dark
colorscheme base16-default

" Vim basics
syntax on
filetype plugin indent on

" Ctrl-P
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_max_files=100000
let g:ctrlp_max_depth=40
set wildignore+=*/target/*,*/.git/*

" Sane indenting
set tabstop=4
set shiftwidth=4
set expandtab

" Fast indenting
vnoremap < <gv
vnoremap > >gv

" Syntastic appartment
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Speed up slow syntax check of large Java files
let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes': [],'passive_filetypes': ['java'] }
"nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Win against sudoed files
cmap w!! w !sudo tee > /dev/null %

" Allow mouse scrolling
set mouse=a

" Clipboard integration
vmap <C-c> "+y
