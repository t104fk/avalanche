"------------------------------
" plugin management start.
filetype off
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
if has("lua")
  NeoBundleLazy 'Shougo/neocomplete', { 'autoload' : {
    \ 'insert' : 1,
    \ }}
else
  NeoBundleLazy 'Shougo/neocomplete', {
    \ 'autoload' : {
    \ 'insert' : 1,
    \ },
    \ }
endif

NeoBundleLazy 'Shougo/neosnippet', {
    \ 'autoload' : {
    \   'commands' : ['NeoSnippetEdit', 'NeoSnippetSource'],
    \   'filetypes' : 'snippet',
    \   'insert' : 1,
    \   'unite_sources' : ['snippet', 'neosnippet/user', 'neosnippet/runtime'],
    \ }}
NeoBundle "Shougo/neosnippet-snippets"

NeoBundleLazy 'tpope/vim-rails', {
    \ 'autoload' : {
    \   'filetypes' : ['haml', 'ruby', 'eruby'] 
    \ }}

NeoBundleLazy 'alpaca-tc/vim-endwise.git', {
    \ 'autoload' : {
    \   'insert' : 1,
    \ }}

NeoBundleLazy 'edsono/vim-matchit', {
    \ 'autoload' : {
    \   'filetypes' : 'ruby',
    \   'mappings' : ['nx', '%']
    \ }}

NeoBundleLazy 'basyura/unite-rails', {
    \ 'depends' : 'Shougo/unite.vim',
    \ 'autoload' : {
    \   'unite_sources' : [
    \     'rails/bundle', 'rails/bundle_gem', 'rails/config',
    \     'rails/controller', 'rails/db', 'rails/destroy', 'rails/features',
    \     'rails/gem', 'rails/gemfile', 'rails/generate', 'rails/git', 'rails/helper',
    \     'rails/heroku', 'rails/initializer', 'rails/javascript', 'rails/lib', 'rails/log',
    \     'rails/mailer', 'rails/model', 'rails/rake', 'rails/route', 'rails/scheme', 'rails/spec',
    \     'rails/stylesheet', 'rails/view'
    \   ]
    \ }}

NeoBundleLazy 'taka84u9/vim-ref-ri', {
    \ 'depends' : ['Shougo/unite.vim', 'thinca/vim-ref'],
    \ 'autoload' : {'filetypes' : 'g:my.ft.ruby_files' } }

NeoBundleLazy 'alpaca-tc/neorspec.vim', {
    \ 'depends' : ['alpaca-tc/vim-rails', 'tpope/vim-dispatch'],
    \ 'autoload' : {
    \   'commands' : ['RSpec', 'RSpecAll', 'RSpecCurrent', 'RSpecNearest', 'RSpecRetry']
    \ }}

NeoBundleLazy 'alpaca-tc/alpaca_tags', {
    \ 'depends' : 'Shougo/vimproc',
    \ 'autoload' : {
    \   'commands' : ['AlpacaTagsUpdate', 'AlpacaTagsSet', 'AlpacaTagsBundle']
    \ }}

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-surround'

filetype plugin indent on
filetype indent on
" plugin management done.

"------------------------------
" encoding
set encoding=utf-8
set fileencoding=utf-8
"------------------------------
set nocompatible
set number
" TODO:per file type
set shiftwidth=2
set tabstop=2
set hlsearch

set noswapfile
set nocompatible
set autoindent
set smartindent
set expandtab
set ignorecase
"------------------------------
" highlight
syntax on
"set cursorline
"augroup cch
"  autocmd! cch
"  autocmd WinLeave * set nocursorline
"  autocmd WinEnter,BufRead * set cursorline
"augroup END
"
":hi clear CursorLine
":hi CursorLine gui=underline
"highlight CursorLine ctermbg=black guibg=black

"--------------\

" Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
    " Use neocomplcache.
    let g:neocomplcache_enable_at_startup = 1
    " Use smartcase.
    let g:neocomplcache_enable_smart_case = 1
    " Use camel case completion.
    let g:neocomplcache_enable_camel_case_completion = 1
    " Use underbar completion.
    let g:neocomplcache_enable_underbar_completion = 1
    " Set minimum syntax keyword length.
    let g:neocomplcache_min_syntax_length = 3
    let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
    
    " Define dictionary.
    let g:neocomplcache_dictionary_filetype_lists = {
        \ 'default' : '',
        \ 'vimshell' : $HOME.'/.vimshell_hist',
        \ 'scheme' : $HOME.'/.gosh_completions'
            \ }
    
    " Define keyword.
    if !exists('g:neocomplcache_keyword_patterns')
        let g:neocomplcache_keyword_patterns = {}
    endif
    let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

"" Plugin key-mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"
"" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ?
""\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ?
""\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
"" For snippet_complete marker.
"if has('conceal')
"  set conceallevel=2 concealcursor=i
"endif

set clipboard=unnamed,autoselect

