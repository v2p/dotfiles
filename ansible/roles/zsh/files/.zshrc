# make possible to use tools installed by composer
if [ -d "$HOME/.composer/vendor/bin" ] ; then
	PATH="$HOME/.composer/vendor/bin:$PATH"
fi	

# npm custom prefix
PATH="$HOME/.npm-global/bin:$PATH"

# path to yarn binaries:
if [ -d "$HOME/.yarn/bin" ]; then
    PATH="$HOME/.yarn/bin:$PATH"
fi

# path to nvm:
if [ -d "$HOME/.nvm" ]; then
    PATH="$HOME/.nvm:$PATH"
fi

# path to custom tools:
PATH="$HOME/bin:$PATH"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

source ~/Soft/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle ssh-agent
antigen bundle git-flow
antigen bundle composer

antigen bundle zsh-users/zsh-syntax-highlighting

# theme
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# bullet-train theme customizations:
BULLETTRAIN_VIRTUALENV_SHOW=false
BULLETTRAIN_NVM_SHOW=false
BULLETTRAIN_RUBY_SHOW=false
BULLETTRAIN_GO_SHOW=false
BULLETTRAIN_TIME_SHOW=false
BULLETTRAIN_EXEC_TIME_SHOW=true
BULLETTRAIN_DIR_EXTENDED=2

# ... and done
antigen apply

alias dc-u="docker-compose up -d"
alias dc-d="docker-compose down"

# custom function: extract package
my_extract_package () {
 if [ -f $1 ] ; then
 case $1 in
 *.tar.bz2)   tar xjf $1        ;;
 *.tar.gz)    tar xzf $1     ;;
 *.bz2)       bunzip2 $1       ;;
 *.rar)       unrar x $1     ;;
 *.gz)        gunzip $1     ;;
 *.tar)       tar xf $1        ;;
 *.tbz2)      tar xjf $1      ;;
 *.tbz)       tar -xjvf $1    ;;
 *.tgz)       tar xzf $1       ;;
 *.zip)       unzip $1     ;;
 *.Z)         uncompress $1  ;;
 *.7z)        7z x $1    ;;
 *)           echo "I don't know how to extract package '$1'..." ;;
 esac
 else
 echo "'$1' is not a valid file"
 fi
}

# custom function: create package
my_create_package () {
 if [ $1 ] ; then
 case $1 in
 tbz)       tar cjvf $2.tar.bz2 $2      ;;
 tgz)       tar czvf $2.tar.gz  $2       ;;
 tar)      tar cpvf $2.tar  $2       ;;
 bz2)    bzip $2 ;;
 gz)        gzip -c -9 -n $2 > $2.gz ;;
 zip)       zip -r $2.zip $2   ;;
 7z)        7z a $2.7z $2    ;;
 *)         echo "File '$1' cannot be packed. You need to choose one of the following format: tbz, tgz, tar, bz2, gz, zip, 7z." ;;
 esac
 else
 echo "'$1' is not a valid file"
 fi

}

# history settings:
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=$HISTSIZE

setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
