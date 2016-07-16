# make possible to use tools installed by composer
if [ -d "$HOME/.composer/vendor/bin" ] ; then
	PATH="$HOME/.composer/vendor/bin:$PATH"
fi	

# npm custom prefix
PATH="$HOME/.npm-global/bin:$PATH"

source ~/Soft/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle ssh-agent
antigen bundle git-flow

antigen bundle zsh-users/zsh-syntax-highlighting

# theme
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

BULLETTRAIN_VIRTUALENV_SHOW=false
BULLETTRAIN_NVM_SHOW=false
BULLETTRAIN_RUBY_SHOW=false
BULLETTRAIN_GO_SHOW=false

# ... and done
antigen apply

set -o vi
