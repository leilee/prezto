#
# Configures git-extras dependency management.
#
# Authors: Edison <ll.buptee@gmail.com>
#

# Load git-extras completion
git_extras_zsh_location="/usr/local/share/git-extras/"
if [[ -s "${git_extras_zsh_location}/git-extras-completion.zsh" ]]; then 
  source "${git_extras_zsh_location}/init.zsh" 2> /dev/null
fi

# workspace
alias gw='git bulk -w'
alias gwa='git bulk --addcurrent'
alias gwd='git bulk --removeworkspace'
alias gwg='git bulk -g -w'
alias gwl='git bulk --listall'
