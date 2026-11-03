# sup yarn
# https://yarnpkg.com

if (( $+commands[yarn] ))
then
  # Only extend PATH if `yarn global bin` actually succeeds. The bare command
  # check above is true even for a non-functional yarn (e.g. an asdf shim with
  # no yarn version set), which otherwise prints an error on every shell start.
  if yarn_global_bin="$(yarn global bin 2>/dev/null)"; then
    export PATH="$PATH:$yarn_global_bin"
  fi
fi
