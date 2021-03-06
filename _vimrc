source $VIMRUNTIME\..\_vimrc

set noundofile

colorscheme darkblue

set number
set colorcolumn=80
if has("gui_running")
	set columns=85 lines=33
endif

syntax on
set tabstop=4 shiftwidth=4 noexpandtab

nnoremap <c-t> :tabf<space>
nnoremap <c-w> ZZ
inoremap <c-t> <ESC>:tabf<space>
inoremap <c-w> <ESC>ZZ

nnoremap <F12> :w<CR>:!mingw32-make<CR>
inoremap <F12> <ESC>:w<CR>:!mingw32-make<CR>

au BufNewFile,BufRead *.ypp set filetype=yacc
au BufNewFile,BufRead *.lpp set filetype=lex
au BufNewFile,BufRead *.hpp set filetype=cpp
au BufNewFile,BufRead *.cpp set filetype=cpp
au BufNewFile,BufRead *.log set autoread
au BufNewFile,BufRead *.log set nowrap
