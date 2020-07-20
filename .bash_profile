#-------------------------------------------------------------
# Add Bash Completion to bash using the Homebrew version
#-------------------------------------------------------------

[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

#-------------------------------------------------------------
# Add Bash Git Prompt to bash using the Homebrew version
#-------------------------------------------------------------

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

#-------------------------------------------------------------
# Add dates and time to history command
#-------------------------------------------------------------

export HISTTIMEFORMAT="%d/%m/%y %T "
