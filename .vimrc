"------------------------------
" plugin management start.
filetype off
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'

source ~/.vim.local/.Shougo.vimrc

NeoBundleLazy 'tpope/vim-endwise', {
    \ 'autoload' : {
    \   'insert' : 1,
    \ }}

source $VIMRUNTIME/macros/matchit.vim

NeoBundleLazy 'taka84u9/vim-ref-ri', {
    \ 'depends' : ['Shougo/unite.vim', 'thinca/vim-ref'],
    \ 'autoload' : {'filetypes' : 'g:my.ft.ruby_files' } }

NeoBundleLazy 'alpaca-tc/alpaca_tags', {
    \ 'depends' : 'Shougo/vimproc',
    \ 'autoload' : {
    \   'commands' : ['AlpacaTagsUpdate', 'AlpacaTagsSet', 'AlpacaTagsBundle']
    \ }}

NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-surround'
NeoBundle 'sudo.vim'

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

source ~/.vim.local/.evervim.vimrc
source ~/.vim.local/.ruby.vimrc
source ~/.vim.local/.python.vimrc
source ~/.vim.local/.go.vimrc
source ~/.vim.local/.markdown.vimrc
source ~/.vim.local/.js.vimrc
source ~/.vim.local/.html.vimrc
source ~/.vim.local/.docker.vimrc

source ~/.vim.local/.env.vimrc

NeoBundle 'markcornick/vim-terraform'
NeoBundle 'cespare/vim-toml'

call neobundle#end()

filetype plugin on
