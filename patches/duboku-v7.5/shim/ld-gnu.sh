#!/bin/sh
RUSTLLD=/Users/jerryshao/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/aarch64-apple-darwin/bin/rust-lld
NEWARGS=""
for a in "$@"; do
  case "$a" in
    -Wl,*) NEWARGS="$NEWARGS $(printf '%s' "${a#-Wl,}" | tr ',' ' ')" ;;
    -nodefaultlibs|-nostdlib|-march=*) ;;
    *) NEWARGS="$NEWARGS $a" ;;
  esac
done
exec "$RUSTLLD" -flavor gnu $NEWARGS
