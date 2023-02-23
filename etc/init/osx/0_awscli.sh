trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu
source "$DOTPATH"/etc/lib/helpers

if ! is_exists "aws"; then
  curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
  sudo installer -pkg AWSCLIV2.pkg -target /
  log_pass "Success to initialize AWS CLI"
else
  log_warn "AWS CLI is already installed."
fi

