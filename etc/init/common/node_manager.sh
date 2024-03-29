trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu
source "$DOTPATH"/etc/lib/helpers

if ! is_exists n; then
 #curl -fsSL https://raw.githubusercontent.com/tj/n/master/bin/n | sudo bash -s lts
 sudo chown -R 501:20 ~/.npm
 sudo npm install -g n
else
  log_warn "Node manager is already installed."
fi

log_pass "Success to initialize Node package manager"
