# Stop script if error or unknown valiable
set -eu
source "$DOTPATH"/etc/lib/helpers

if [ -z "$DOTPATH" ]; then
  echo '$DOTPATH is not found' >&2
  exit 1
fi

sudo -v

if [ -z "$PLATFORM" -o "$PLATFORM" = "unknown" ]; then
  echo 'invalid platform' >&2
  exit 1
fi

for i in $DOTPATH/etc/init/common/*.sh
do
  if [ -f "$i" ]; then
    log_info "$(e_arrow "$(basename "$i")")"
    # use source not bash command to extend PATH of brew
    source $i
  else
    continue
  fi
done

for i in $DOTPATH/etc/init/$PLATFORM/*.sh
do
  if [ -f "$i" ]; then
    log_info "$(e_arrow "$(basename "$i")")"
    source $i
  else
    continue
  fi
done

