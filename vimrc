execute pathogen#infect()
set nocompatible		    " get rid of VI compatibility
filetype plugin indent on	" filetype detection, plugin, indent

autocmd FileType make setlocal noexpandtab
autocmd FileType ruby setlocal sw=2 ts=2 sts=2

set t_Co=256			    " 256 colour mode
syntax enable           	" enable syntax highlighting
colorscheme desert		    " fav colourscheme

set number                	" show line numbers
set ruler                 	" Always show info along bottom.

set tabstop=4			    " tabs have 4 spaces
set shiftwidth=4		    " indent/outdent by 4
set expandtab			    " no tabs, just spaces

let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets"]

if exists('+foldmethod')
    setlocal foldmethod=syntax
endif
