#
# Defines CocoaPods aliases.
#
# Authors:
#   edison <ll.buptee@gmail.com>
#

# Return if requirements are not found.
if [[ "$OSTYPE" != (darwin|linux)* ]]; then
  return 1
fi

#
# Aliases
#

alias podcc='pod cache clean'
alias podcl='pod cache list'
alias pode='pod env'
alias podi='pod install'
alias podo='pod outdated'
alias pods='pod search'
alias podu='pod update'
