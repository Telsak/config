execute pathogen#infect()
syntax on
filetype plugin indent on
nnoremap <F3> :set cc=80
set pastetoggle=<F2>
set ruler
set background=dark
" "set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set rnu

set laststatus=2
set statusline=
set statusline+=%#function#\ %l
set statusline+=\ %*
set statusline+=\ ««
set statusline+=\ %f\ %*
set statusline+=\ »»
set statusline+=\ %m
set statusline+=%#keyword#\ %F
set statusline+=%=
" set statusline+=%#warningmsg#
" set statusline+=%3*\ %{SyntasticStatuslineFlag()}
set statusline+=\ ««
set statusline+=\ %{strftime('%R',getftime(expand('%')))}
set statusline+=\ ::
set statusline+=\ %n
set statusline+=\ »»\ %*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline_powerline_fonts = 1

augroup C-80col
    autocmd!
    autocmd FileType c set cc=80
augroup END

" Open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
