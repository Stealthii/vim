" =======
" Plugins
" =======

runtime plugged/vim-plug/plug.vim "Decided to stick it
call plug#begin()
Plug 'AndrewRadev/sideways.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'airblade/vim-gitgutter'
Plug 'alfredodeza/coveragepy.vim'
Plug 'blueshirts/darcula'
Plug 'chrisbra/csv.vim'
Plug 'digitaltoad/vim-jade'
Plug 'fholgado/minibufexpl.vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-plug'
Plug 'klen/python-mode'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'rkulla/pydiction'
Plug 'rstacruz/sparkup'
Plug 'scrooloose/nerdtree'
Plug 'sickill/vim-pasta'
Plug 'thomwiggers/vim-colors-solarized'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yazug/vim-taglist-plus'
call plug#end()

" =======
" Options
" =======

let g:solarized_termtrans = 1
let g:solarized_contrast = "high"
let g:solarized_visibility = "high"
syntax enable
set background=dark
colorscheme solarized
set directory=$HOME/.vim/swapfiles// "For swaps
let g:airline_powerline_fonts = 1 "Use Powerline for Vim airline
let g:airline#extensions#branch#enabled = 1 "vim-fugitive integration
"let g:airline#extensions#tagbar#enabled = 1 "tagbar integration
let g:airline#extensions#csv#enabled = 1 "csv.vim integration
let g:airline#extensions#hunks#enabled = 1 "vim-gitgutter integration

set hidden "Keeps invisible buffers loaded
set mouse=a "Enables mouse support
set hlsearch "When searching, highlights all matches

set ignorecase "Case insensitive search
set smartcase  "Makes searching case-sensitive if you have a mixed case search
set nostartofline "Keeps the cursor at the same position on a line
set laststatus=2 "Always show the status line
set confirm "Ask for confirmation when changes have happened
set visualbell "Allows Vim to notify you through the terminal
set cmdheight=2 "Sets the command buffer (at bottom) to size 2
set number "Shows line numbers

" The settings below refer to indentation of code.  To simplify:
" - Tabs are replaced with 4 spaces.
" - Indentation is (by default) always 4 spaces
" - If you have only got 8 space indentation, these will become tabs again

set shiftwidth=4 "The automatic indent amount
set tabstop=8 "How many columns relate to a tab
set softtabstop=4 "4 columns when you press tab
set expandtab "This replaces tab with spaces!

filetype plugin indent on

" =============
" Plugin Config
" =============

" FZF
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
nmap ; :Buffers<CR>
nmap <Leader>r :Tags<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>a :Ag<CR>

" Pydiction
let g:pydiction_location = '/home/dan.porter/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 12 "Set autocomplete list to height 12

" python-mode
let g:pymode_folding = 0 "Do NOT fold functions/classes by default
let g:pymode_lint_write = 0 "Disable pylint checking every save
let g:pymode_run_key = 'R' "Set key 'R' for run python code
let g:pymode_rope = 0 "Don't load rope plugin by default
let g:pymode_lint_ignore = "" "Clean motherfuckers

" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" NERDTree
autocmd StdinReadPre * let s:std_in=1 "Detect stdin
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif "Auto-open if empty
map <C-n> :NERDTreeToggle<CR>|" Ctrl+N for opening

" vim-easy-align
vmap <Enter> <Plug>(EasyAlign) " Start interactive EasyAlign in visual mode (e.g. vip<Enter>)

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ========
" Bindings
" ========

" Quit all
nmap <F2>      :qa <CR>| " F2 Get the fuck out
vmap <F2> <Esc>:qa <CR>
omap <F2> <Esc>:qa <CR>
imap <F2> <Esc>:qa <CR>

" Tagbar
nmap <F3>      :TagbarToggle <CR>| " F3 Tagbar
vmap <F3> <Esc>:TagbarToggle <CR>
omap <F3> <Esc>:TagbarToggle <CR>
imap <F3> <Esc>:TagbarToggle <CR>

" Sideways
nnoremap <c-h> :SidewaysLeft<cr>
nnoremap <c-l> :SidewaysRight<cr>

" VimDiff funkyness
nnoremap <S-Left>  <c-w>h   |" move cursor to the left window  (Shift + Left Arrow)
nnoremap <S-Right> <c-w>l   |" move cursor to the right window (Shift + Right Arrow)
