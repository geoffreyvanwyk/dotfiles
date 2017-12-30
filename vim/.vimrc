"-----------------------------------------------------------------------------
"---# Plug-ins {{{1

" Install and configure plug-ins.

"------## Installation {{{2

" Install plug-ins using github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged') " Directory into which plug-ins are cloned.

"---------### General {{{3

" A universal set of defaults that everyone can agree on.
Plug 'tpope/vim-sensible'

" A fancy start screen.
" This is the first screen you see after starting Vim
Plug 'mhinz/vim-startify'

"---------### Appearance {{{3

" A dark color scheme
Plug 'mhinz/vim-janah'

" Improved status line that looks better and displays more information such as
" - current Git branch with the number of lines added, modified, and removed;
" - language of the text in the current buffer;
" - warnings about trailing whitespace and mixture of tabs and spaces.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"---------### Buffers {{{3

" Delete a buffer without closing its window.
Plug 'moll/vim-bbye'

"---------### Debugging {{{3

" Multilanguage debugger client (PHP, Python, Perl, Ruby, etc.)
Plug 'joonty/vdebug'

"---------### Editing {{{3

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

"---------### File System {{{3

" Presents a tree-view of file system, and allows performance of simple file
" system operations.
Plug 'scrooloose/nerdtree'

" Full path fuzzy file, buffer, MRU (most recently used), tag, etc. finder for
" Vim.
Plug 'ctrlpvim/ctrlp.vim'

"---------### Source Navigation {{{3

" Manages tag files.
Plug 'ludovicchabant/vim-gutentags'

"---------### Syntax Checking {{{3

" Syntax checker for multiple languages.
Plug 'scrooloose/syntastic'

"---------### Language: JavaScript {{{3

" JSON syntax highlighting.
" Keywords have one color, and values another.
" Hides quotes.
" Provides code folding.
" Warns about invalid syntax.
Plug 'elzr/vim-json'

"---------### Language: Markdown {{{3

" Text filtering and alignment. Dependency for 'plasticboy/vim-markdown'.
Plug 'godlygeek/tabular'

" Syntax highlighting, matching rules and mappings for the original Markdown
" and extensions.
Plug 'plasticboy/vim-markdown'

"---------### Language: PHP {{{3

" Up-to-date PHP syntax highlighting (5.3 - 7.1)
Plug 'StanAngeloff/php.vim'

" Improved omnicompletion for PHP
Plug 'shawncplus/phpcomplete.vim'

" Easily work with namespaces:
" - Insert 'use' statements automatically.
" - Sort 'use' statements alphabetically.
" - Expand to fully qualified names.
Plug 'arnaud-lb/vim-php-namespace'

" Syntax hightlighting for Laravel Blade templating engine.
Plug 'jwalton512/vim-blade'

"---------### Searching {{{3

" Search for text in the files in current directory and subdirectories.
Plug 'mileszs/ack.vim'

"---------### Version Control {{{3

" A Vim user interface for Git
Plug 'tpope/vim-fugitive'

" In left margin of a buffer in a Git repository, shows which lines have been
" added, changed, or deleted. Also, allows for staging or reverting of hunks.
Plug 'airblade/vim-gitgutter'

" Repository viewer.
Plug 'gregsexton/gitv', {'on': 'Gitv'}

call plug#end()

"------## Configuration {{{2

"---------### Plug-in: Airline {{{3

let g:airline_theme='bubblegum'

" Use powerline symbols
let g:airline_powerline_fonts = 1

" Automatically display all buffers when only one tab is open.
let g:airline#extensions#tabline#enabled = 1

" Easily switch tabs
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1

"---------### Plug-in: CtrlP {{{3

" Show hidden files and folders.
let g:ctrlp_show_hidden = 1

"---------### Plug-in: DelimitMate {{{3

" Autoindent when pressing enter inside a delimiting pair.
let g:delimitMate_expand_cr = 1

"---------### Plug-in: NERDTree {{{3

" Display bookmarks table.
let NERDTreeShowBookmarks=1

" Show hidden files and directories.
let NERDTreeShowHidden=1

"---------### Plug-in: Neocomplete {{{3

" Start Neocomplete when Vim starts
let g:necomplete#enable_at_startup=1

"---------### Plug-in: PHP Namespace {{{3

let g:php_namespace_sort_after_insert = 1

"---------### Plug-in: Startify {{{3

let g:startify_bookmarks = [
            \'$HOME/.dotfiles/vim/.vimrc',
            \'$HOME/.dotfiles/zsh/.zshrc',
            \'$HOME/.dotfiles/zsh/.zshenv',
            \'$HOME/.dotfiles/tmux/.tmux.conf'
            \]


"-----------------------------------------------------------------------------
"---# Abbreviations {{{1

" An abbreviation is a short word that takes the place of a long one.
" In INSERT mode, replaces the short word with the long one after you press
" <SPACE> after the short one.

"---## Comment Headings {{{2

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
"---# Appearance {{{1

colorscheme janah

" Highlight the 80th column.
set colorcolumn=80

" Highlight the line on which the cursor is currently
set cursorline

" Wrap long lines at a character in 'breakat' rather than at the last
" character that fits on the screen.
set linebreak

"------## Folding {{{2

set foldmethod=marker

"------## GUI Options {{{2

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
"---# Autocommands {{{1

" Define commands to be automatically executed when certain events occur.

augroup editing
    autocmd!
    " Automatically delete trailing spaces before saving buffer
    autocmd BufWritePre * :%s/\s\+$//e
augroup END

augroup filetype_php
    autocmd!

    "  Insert 'use' statements automatically, using PHP Namespace plugin.
    autocmd FileType php inoremap <leader>u <esc>:call IPhpInsertUse()<cr>
    autocmd FileType php noremap <leader>u :call PhpInsertUse()<cr>

    " Sort 'use' statements automatcally, using PHP Namespace plugin.
    autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
    autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

    " Expand to fully qualified names, using PHP Namespace plugin.
    autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
    autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>
augroup END


"------------------------------------------------------------------------------
"---# Editing {{{1

"------## Completion {{{2

" Ignore case differences when searching for matches, e.g. if the word so far
" is 'fort', and 'Fortunately' has been typed previously, complete 'fort' to
" 'Fortunately'.
set ignorecase

" When `ignorecase` is set, keep the case of the word as type so far, e.g. if
" the word so far is 'fort', and 'Fortunately' has been typed previously,
" complete 'fort' to 'fortunately'.
set infercase

"------## Indentation {{{2

" When <TAB> key is pressed, insert spaces instead of a tab.
set expandtab

" A tab is as wide as four spaces.
set tabstop=4

" Indenting with the shift operator in normal mode also inserts four spaces.
set shiftwidth=4

" Ensure <Backspace> deletes four spaces, instead of just one.
set softtabstop=4


"------------------------------------------------------------------------------
"---# File System {{{1

" When a file has been detected to have been changed outside of Vim and it has
" not been changed inside of Vim, automatically read it again.
" This suppresses warning W10 when editing a read-only file.
set autoread

" Automatically save a buffer when switching to another buffer.
set autowriteall

" Prevent creation of swap files (*.swp).
set noswapfile


"------------------------------------------------------------------------------
"---# Functions {{{1

"------## Plug-in: PHP Namespace {{{2

" Insert 'use' statements automatically.
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

" Expand to fully qualified names.
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction


"------------------------------------------------------------------------------
"---# Mappings {{{1

" Map keystrokes to commands

let mapleader = ','

"------## Editing {{{2

" Convert current word to uppercase in INSERT mode.
inoremap <c-u> <esc>vawUi

" Convert current word to uppercase in NORMAL mode.
nnoremap <c-u> vawU

"------## Movements {{{2

" Treat visual lines as literal lines.
nnoremap j gj
nnoremap k gk

"------## Buffers {{{2

nnoremap <leader>bd :Bdelete<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bn :bn<cr>

"------## Tabs {{{2

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

"------## File System {{{2

" Toggle the visibility of the file system tree side-window, using plug-in
" NERDTree..
nmap <leader>tt :NERDTreeToggle<cr>

" Find the current file in the tree.
nmap <leader>tf :NERDTreeFind<cr>

" Quickly open .vimrc in new tab
nmap <leader>ev :tabedit $HOME/.dotfiles/vim/.vimrc<cr>

" Save files as superuser with sudo.
cmap w!! write !sudo tee > /dev/null %

