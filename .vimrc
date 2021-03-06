"! Default options for VIM
"  If :echo $TERM is xterm-256
syntax on
set nocompatible
set autoindent
set smartindent
set noexpandtab
set tabstop=3
set shiftwidth=3
set fileformat=unix
set backspace=indent,eol,start
set textwidth=119
set showmode
set nu
set cc=120
set incsearch

"! Remapping navigation keys
"  j -> left one character
"  l -> right one character
"  k -> up one line
"  , -> down one line
noremap j h
noremap , j

"! Restore cursor to the last place in the most recent files"
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

"! Resetting the cursor
function! ResCur()
	if line("'\"") <= line("$")
		normal! g`"
		return 1
	endif
endfunction

"! Resetting the cursor
augroup resCur
	autocmd!
	autocmd BufWinEnter * call ResCur()
augroup END
