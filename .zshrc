# Add aliases
source $HOME/.aliases

# Add antigen
source $(brew --prefix)/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git-prompt

# Zsh Autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Install powerlevel10k theme
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# Enable zsh spellcheck and make its prompt nicer
setopt correct
export SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r?$reset_color (Yes, No, Abort, Edit) "

# Don't autoupgrade homebrew
export HOMEBREW_NO_AUTO_UPDATE=1

# Add zsh completions
autoload -Uz compinit && compinit
autoload -U bashcompinit
bashcompinit

# Add pipx completions
eval "$(register-python-argcomplete pipx)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2023-05-27 18:57:35
export PATH="$PATH:/Users/allen/.local/bin"
