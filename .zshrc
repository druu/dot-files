# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(iterm git git-extras git-flow autojump lol osx sublime laravel colorize)

source $ZSH/oh-my-zsh.sh


# Customize to your needs...
export PATH=/Users/_druu/.rvm/gems/ruby-1.9.3-p286/bin:/Users/_druu/.rvm/gems/ruby-1.9.3-p286@global/bin:/Users/_druu/.rvm/rubies/ruby-1.9.3-p286/bin:/Users/_druu/.rvm/bin:/usr/local/bin:/usr/local/go/bin:/usr/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:/Users/_druu/my_gcc/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/go/bin


alias stfu1="sudo smc -k F0Mx -w 3e80"
alias stfu="stfu1 && sudo smc -k F1Mx -w 3e80"

alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias zshrc="nano ~/.zshrc && reload"

alias vimconf="vim ~/.vim/vimrc"

alias git-yolo='git commit -am "`curl -s whatthecommit.com/index.txt`"'

alias update-hooks='gc --allow-empty -m "EXEC UPDATE" && git push'

function call-hook {
    msg="EXEC $@"
    git commit --allow-empty -m "$msg" && git push
}


