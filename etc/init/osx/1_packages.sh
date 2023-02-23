trap - ERR INT
set +e
source "$DOTPATH"/etc/lib/helpers

TAPS=('homebrew/cask' 'homebrew/cask-versions')
for t in ${TAPS[@]}
do
  exists=`brew tap | grep $t | wc -l`
  [ $exists -lt 1 ] && brew tap $t
done

PACKAGES=(\
  reattach-to-user-namespace \
  # csshx \
  nkf \
  brew-cask \
  peco \
  wget \
  jq \
  tree \
  watch \
  tig \
  yarn \
  libtool \
  freetype \
  fontconfig \
  gnupg \
  pinentry-mac
)

for p in ${PACKAGES[@]}
do
  brew list $p
  if [ $? -eq 0 ]; then
    log_info "$p is already installed"
    continue
  fi
  brew install $p
  e_done "Success to install $p"
done

brew cleanup

log_pass "Success to install all packages"

