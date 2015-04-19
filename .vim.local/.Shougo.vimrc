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
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'

