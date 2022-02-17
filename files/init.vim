set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
call plug#begin('~/.vim/plugged')
  " Temas
  Plug 'tomasiser/vim-code-dark'
  " IDE
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'easymotion/vim-easymotion'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'vim-airline/vim-airline'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'preservim/nerdcommenter'
  Plug 'ryanoasis/vim-devicons'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'plasticboy/vim-markdown'
call plug#end()

set t_ut=
colorscheme codedark
let g:codedark_term256=1
let NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1
let mapleader=" "
let updatetime=100
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:deoplete#enable_at_startup = 1
let g:airline_theme = 'codedark'

" Markdown 
let g:vim_markdown_folding_disabled = 1

" Highlight unwanted spaces
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Clean whitespace on save
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

" buffers
map <Leader>ob :Buffers<cr>

" Search word
nmap <Leader>f <Plug>(easymotion-s2)
map  <Leader>F :Ag<CR>
" Search files
nmap <Leader>p :GFiles --cached --others --exclude-standard<CR>
" Open tree view
nmap <Leader>nt :NERDTreeFocus<CR>
"" Locate current file in the treeview
map <leader>lo :NERDTreeFind<CR>
" shorter commands
cnoreabbrev tree NERDTreeToggle
cnoreabbrev blame :Git blame
cnoreabbrev find NERDTreeFind
cnoreabbrev diff Gdiff
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
" git
nnoremap <Leader>G :G<cr>
nnoremap <Leader>gp :Git push<cr>
nnoremap <Leader>gl :Git pull<cr>
" Panel switching
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
" Split panel
nnoremap <C-o> :sp<CR>
nnoremap <C-e> :vsp<CR>
" Map yanked to clipboard
vnoremap <C-c> "+y
vnoremap <C-v> "+p

" Line moving
"" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
"" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
"" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Comment line
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1"

" CoC
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

" Tab completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
