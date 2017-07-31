"-----------------------------------------------------------------------------
"---# Plug-ins

" Install and configure plug-ins.

"------## Installation

" Install plug-ins using github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged') " Directory into which plug-ins are cloned.

"---------### General

" A universal set of defaults that everyone can agree on.
Plug 'tpope/vim-sensible'

" A fancy start screen.
" This is the first screen you see after starting Vim
Plug 'mhinz/vim-startify'

"---------### Appearance

" A dark color scheme
Plug 'mhinz/vim-janah'

" Improved status line that looks better and displays more information such as
" - current Git branch with the number of lines added, modified, and removed;
" - language of the text in the current buffer;
" - warnings about trailing whitespace and mixture of tabs and spaces.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"---------### Debugging

" Multilanguage debugger client (PHP, Python, Perl, Ruby, etc.)
Plug 'joonty/vdebug'

"---------### Editing

" Keyboard shortcuts for quickly adding, changing, or removing parentheses,
" braces, quotes, brackets, and XML/HTML tags around text.
Plug 'tpope/vim-surround'

" Automatically closes quotes, parentheses, brackets, and braces.
Plug 'Raimondi/delimitMate'

" When a movement operator is triggered, all visible text preceding
" or following the cursor is faded, and motion targets are highlighted.
Plug 'easymotion/vim-easymotion'

" Autocompletion for text, file system paths,etc.
Plug 'Shougo/neocomplete.vim'

" Commands for quickly commenting source code.
Plug 'scrooloose/nerdcommenter'

"---------### File System

" Presents a tree-view of file system, and allows performance of simple file
" system operations.
Plug 'scrooloose/nerdtree'

" Full path fuzzy file, buffer, MRU (most recently used), tag, etc. finder for
" Vim.
Plug 'ctrlpvim/ctrlp.vim'

"---------### Language: JavaScript

" JSON syntax highlighting.
" Keywords have one color, and values another.
" Hides quotes.
" Provides code folding.
" Warns about invalid syntax.
Plug 'elzr/vim-json'

"---------### Language: PHP

" Up-to-date PHP syntax highlighting (5.3 - 7.1)
Plug 'StanAngeloff/php.vim'

" Autocompletion for PHP
" Plug 'shawncplus/phpcomplete.vim'

"---------### Version Control

" A Vim user interface for Git
Plug 'tpope/vim-fugitive'

" In left margin of a buffer in a Git repository, shows which lines have been
" added, changed, or deleted. Also, allows for staging or reverting of hunks.
Plug 'airblade/vim-gitgutter'

call plug#end()

"------## Configuration

"---------### Plug-in: Airline

let g:airline_theme='bubblegum'

" Use powerline symbols
let g:airline_powerline_fonts = 1

" Automatically display all buffers when only one tab is open.
let g:airline#extensions#tabline#enabled = 1

" Easily switch tabs
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1

"---------### Plug-in: DelimitMate

" Autoindent when pressing enter inside a delimiting pair.
let g:delimitMate_expand_cr = 1

"---------### Plug-in: Neocomplete

" Start Neocomplete when Vim starts
let g:necomplete#enable_at_startup=1


"-----------------------------------------------------------------------------
"---# Abbreviations

" An abbreviation is a short word that takes the place of a long one.
" In INSERT mode, replaces the short word with the long one after you press
" <SPACE> after the short one.

"---## Comment Headings

"---### VimScript
iabbrev vhr "------------------------------------------------------------------------------
iabbrev vh1 "---#
iabbrev vh2 "------##
iabbrev vh3 "---------###
iabbrev vh4 "------------####
iabbrev vh5 "---------------#####
iabbrev vh6 "------------------######

"---### Bash/Zsh
iabbrev bhr #------------------------------------------------------------------------------
iabbrev bh1 #---#
iabbrev bh2 #------##
iabbrev bh3 #---------###
iabbrev bh4 #------------####
iabbrev bh5 #---------------#####
iabbrev bh6 #------------------######


"------------------------------------------------------------------------------
"---# Appearance

colorscheme janah

" Highlight the line on which the cursor is currently
set cursorline

" Wrap long lines at a character in 'breakat' rather than at the last
" character that fits on the screen.
set linebreak

"------## GUI Options

" Hide the menu bar.
set guioptions -=m

" Hide the toolbar.
set guioptions -=T

" Never show lefthand scrollbar.
set guioptions -=L

" Set font to be used in GVim.
" Font for Vim (commandline version) is determined by the terminal emulator.
if has("gui_running")
	set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
endif


"------------------------------------------------------------------------------
"---# Autocommands

" Define commands to be automatically executed when certain events occur.

augroup autocommands
    autocmd!
    " Automatically delete trailing spaces before saving buffer
    autocmd BufWritePre <buffer> :%s/\s\+$//e

    " Save folds in .vimrc file.
    autocmd BufWrite $HOME/.vimrc mkview

    " Load folds in .vimrc file.
    autocmd BufRead $HOME/.vimrc silent loadview
augroup END


"------------------------------------------------------------------------------
"---# Editing

"------## Completion

" Ignore case differences when searching for matches, e.g. if the word so far
" is 'fort', and 'Fortunately' has been typed previously, complete 'fort' to
" 'Fortunately'.
set ignorecase

" When `ignorecase` is set, keep the case of the word as type so far, e.g. if
" the word so far is 'fort', and 'Fortunately' has been typed previously,
" complete 'fort' to 'fortunately'.
set infercase

"------## Indentation

" When <TAB> key is pressed, insert spaces instead of a tab.
set expandtab

" A tab is as wide as four spaces.
set tabstop=4

" Indenting with the shift operator in normal mode also inserts four spaces.
set shiftwidth=4

" Ensure <Backspace> deletes four spaces, instead of just one.
set softtabstop=4


"------------------------------------------------------------------------------
"---# File System

" When a file has been detected to have been changed outside of Vim and it has
" not been changed inside of Vim, automatically read it again.
" This suppresses warning W10 when editing a read-only file.
set autoread

" Automatically save a buffer when switching to another buffer.
set autowriteall


"------------------------------------------------------------------------------
"---# Mappings

" Map keystrokes to commands

let mapleader = ','

"------## Movements

" Treat visual lines as literal lines.
nmap j gj
nmap k gk

"------## Tabs

" Switch to the tab with the specified number, using plug-in Airline.
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

"------## File System

" Toggle the visibility of the file system tree side-window, using plug-in
" NERDTree..
nmap <leader>t :NERDTreeToggle<cr>

" Quickly open .vimrc
nmap <leader>ev :tabedit $MYVIMRC<cr>

" Save files as superuser with sudo.
cmap w!! write !sudo tee > /dev/null %

