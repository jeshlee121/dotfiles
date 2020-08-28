syntax on

call plug#begin('~/.vim/plugged')

Plug 'majutsushi/tagbar'

" Automatically show Vim's complete menu while typing
Plug 'vim-scripts/AutoComplPop'

" Autocomplete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

Plug 'vim-python/python-syntax'

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  "   " - name:   name of the plugin
  "     " - status: 'installed', 'updated', or 'unchanged'
  "       " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
      !./install.py
	endif
	endfunction

	Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
call plug#end()

set completeopt=menuone,longest
" don't give |ins-completion-menu| messages.
set shortmess+=c
" Show line numbers
set number
" Enable scrolling with scroll wheel
set mouse=a

" Navigate the complete menu items like CTRL+n / CTRL+p would.
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"

highlight Pmenu ctermbg=gray guibg=gray
highlight LineNr ctermfg=grey
