" -- General {{{

set guicursor=
set encoding=utf-8
set guifont=FiraMono
set noshowmatch
set relativenumber
set hidden
set noerrorbells
set novisualbell
set tabstop=4 softtabstop=4
set shiftwidth=4
set laststatus=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set termguicolors
set scrolloff=8
set shortmess+=c
set updatetime=50
set cmdheight=2
set signcolumn=yes
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Allow vim to set a custom font or color for a word
syntax on
filetype plugin indent on

" Set the leader button
let mapleader = ' '

" Remap escape
inoremap jk <Esc>

" Autosave buffers before leaving them
autocmd BufLeave * silent! :wa

" Remove trailing white spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Center the screen quickly
nnoremap <space> zz

" Fix some common typos
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" }}}


" -- Colors {{{

set termguicolors
set background=dark
colorscheme gruvbox

let g:gruvbox_invert_selection='0'
let g:gruvbox_contrast_dark = 'medium'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

"  }}}


" -- Searching {{{

set incsearch
set hlsearch
set inccommand=split


" Clear search highlights
map <leader>c :nohlsearch<cr>

" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"  }}}


" -- Navigation {{{

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Move between buffers with Shift + arrow key...
nnoremap <F11> :bprevious<cr>
nnoremap <F12> :bnext<cr>

" Close buffer
nnoremap <F10> :bdelete<cr>

" ... but skip the quickfix when navigating
augroup qf
        autocmd!
        autocmd FileType qf set nobuflisted
augroup END

"  }}}


" -- Splits {{{

" Create horizontal splits below the current window
set splitbelow
set splitright

" Creating splits
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

" Closing splits
nnoremap <leader>q :close<cr>

"  }}}
