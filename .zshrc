# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/Users/jordanverasamy/.oh-my-zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  rails
  ruby
  bundler
  rake
  brew
  osx
  zsh-syntax-highlighting
)
MAILCHECK=0
source $ZSH/oh-my-zsh.sh
# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run alias.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias sc="shopify-cli console"
alias gcarm="git commit --amend --reuse-message=HEAD"
alias gpnv="git push --no-verify"
alias dt="dev test"
alias ssh-magento="ssh -i ~/.ssh/id_rsa j.verasamy@35.231.102.88"
alias be="bundle exec"
alias rra="rerun -x --dir app,spec -- bundle exec rspec"
alias src="source ~/.zshrc"
alias b='git for-each-ref --sort=-committerdate refs/heads/ --format='\''%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'\'' --count=15'
alias branches='git for-each-ref --sort=-committerdate refs/heads/ --format='\''%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'\'
alias scp="bundle exec rake shop_management:store_copy"
alias editzsh="code ~/.zshrc"
alias dtsc="dev test spec/jobs/shop_management/store_copy spec/operations/shop_management/store_copy"
# This will set your window title
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
# source ~/.iterm2_shell_integration.basename $SHELL
# # This creates the var currentDir to use later on
# function iterm2_print_user_vars() {
#   iterm2_set_user_var currentDir "${PWD##*/}"
# }
# ~/killmouseaccel mouse
[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export NIX_PATH="nixpkgs=${HOME}/.nix-defexpr/channels/nixpkgs:${HOME}/.nix-defexpr/channels"
if [ -e /Users/jordanverasamy/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jordanverasamy/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installersource /Users/jordanverasamy/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /Users/jordanverasamy/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
