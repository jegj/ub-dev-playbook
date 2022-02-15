syntax on
syntax enable
set cursorline
set nobackup
set number
set mouse=v                             " middle-click paste with
set mouse=a                             " enable mouse click
set numberwidth=1
set hlsearch                            " highlight search
set smarttab
filetype on                             " enable filetype detection
set clipboard=unnamed                   " https://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings
set showmode                            " show INSERT, VISUAL, etc. mode
set showmatch                           " show matching brackets
set autoindent smartindent              " auto/smart indent
set showcmd
set ruler
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set encoding=utf-8
set fileencoding=utf-8
set sw=2
set relativenumber
set expandtab
set updatetime=50                       " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
                                        " delays and poor user experience.
