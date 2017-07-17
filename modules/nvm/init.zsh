#
# Lazy load nvm for faster shell start
#
# Authors:
#   edison <ll.buptee@gmail.com>
#

# Return if requirements are not found.
if [[ "$OSTYPE" != (darwin|linux)* ]]; then
  return 1
fi

lazynvm() {
  unset -f nvm node npm
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}

nvm() {
  lazynvm 
  nvm $@
}
 
node() {
  lazynvm
  node $@
}
 
npm() {
  lazynvm
  npm $@
}
