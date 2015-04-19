NeoBundleLazy 'tpope/vim-rails', {
    \ 'autoload' : {
    \   'filetypes' : ['haml', 'ruby', 'eruby']
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

NeoBundle 'skwp/vim-rspec'
map <D-R> :RunSpec<cr>
map <D-L> :RunSpecLine<cr>

