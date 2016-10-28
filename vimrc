execute pathogen#infect()
set nocompatible		    " get rid of VI compatibility
filetype plugin indent on	" filetype detection, plugin, indent

autocmd FileType make setlocal noexpandtab
autocmd FileType ruby setlocal sw=2 ts=2 sts=2
autocmd BufWritePost *.py call Flake8()

set t_Co=256			    " 256 colour mode
syntax enable           	" enable syntax highlighting
let g:solarized_termcolors=256
colorscheme solarized	    " fav colourscheme

set number                	" show line numbers
set ruler                 	" Always show info along bottom.

set tabstop=4			    " tabs have 4 spaces
set shiftwidth=4		    " indent/outdent by 4
set expandtab			    " no tabs, just spaces

if exists('+foldmethod')
    setlocal foldmethod=syntax
endif

" Remaps
nnoremap <Leader>nf :NosetestFile<CR>
nnoremap <Leader>nm :NosetestMethod<CR>

let g:syntastic_python_checkers = ['pylint', 'flake8'] ", 'python']
