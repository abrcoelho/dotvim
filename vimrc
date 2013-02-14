" Pathogen - easy plugin install via Git
call pathogen#infect()
call pathogen#helptags()

set nocompatible                " far before my time
syntax enable                   " syntax highlighting
set encoding=utf-8              " ok? always...
set laststatus=2                " Always show the statusline
set showcmd                     " display incomplete commands
set guioptions-=T               " doesn't show MacVim buttons (new, save, etc)
filetype plugin indent on       " load file type plugins + indentation

set visualbell                  " stop beeping
" set relativenumber              " show line numbers relative to the cursor

" Persistent undo - http://amix.dk/blog/post/19548
set undodir=~/.vim/.undodir
set undofile
set undolevels=100

" Stores backup files (filename.ext~) and swap (.swp) files inside .vim directory
set backupdir=~/.vim/.backup
set directory=~/.vim/.swap_files

" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set listchars=tab:▸\ ,eol:¬     " whitespace characters from Textmate
set list                        " shows whitespaces with the characters above

" Adds 2 lines below the cursor when scrolling
set scrolloff=2

" Ruler
set number

" Searching
set hlsearch                    " highlight matches
set incsearch                   " searches starts as soon as you type - before pressing [enter]
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set gdefault                    " applies substitutions globally, not only to the first occurence - e.g. %s/foo/bar/g

" De-selects highlighted text
nnoremap <leader><space> :noh<cr>

" use comma as <Leader> key instead of backslash
let mapleader=","

" Auto-reload .vimrc on save
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Opens a new tab with ~/.vimrc 
nmap <silent><leader>ev :tabedit $MYVIMRC<CR>

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Theming, colors, fonts
colorscheme railscasts
set gfn=Inconsolata:h20

" Ruby.vim
" SHIFT+Enter autocloses the def or block
imap <S-CR>    <CR><CR>end<Esc>-cc

" Insert a hard rocket width <c-l>
imap <c-l> <space>=><space>

" Rails.vim
set wildmode=list:longest,list:full

" Ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Moving between tabs with CMD-number
map <D-S-]> gt
map <D-S-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

" Loads the matchit plugin (jump between opening/closing blocks with %)
runtime macros/matchit.vim

" Status line
set laststatus=2
set statusline=
set statusline+=\ %f%m%r%h%w
set statusline+=\ \ \ \ \ \ [FORMAT=%{&ff}]
set statusline+=\ \ [TYPE=%Y]
set statusline+=\ \ [POS=%04l,%04v]
set statusline+=\ \ [%p%%]
set statusline+=\ \ [LEN=%L]

" Gundo mappings
nnoremap <F5> :GundoToggle<CR>
