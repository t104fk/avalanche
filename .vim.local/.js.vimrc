NeoBundle 'pangloss/vim-javascript'
" jsx
NeoBundle 'mxw/vim-jsx'
NeoBundle 'scrooloose/syntastic'
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers=['jsxhint']
let g:syntastic_mode_map = {
  \ "mode" : "active",
  \ "active_filetypes" : ["javascript", "json"],
  \ }
NeoBundle 'jiangmiao/simple-javascript-indenter'
let g:SimpleJsIndenter_BriefMode = 1
let g:SimpleJsIndenter_CaseIndentLevel = -1
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'elzr/vim-json'
"NeoBundle 'mattn/jscomplete-vim'
"let g:jscomplete_use = ['dom', 'moz', 'es6th']
