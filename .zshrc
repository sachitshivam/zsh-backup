# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/shivam/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"


SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  ember         # Ember.js section
  kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_FORMAT="%T %w" 
SPACESHIP_BATTERY_THRESHOLD=40


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
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  colored-man-pages
  colorize
  copydir
  systemd
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-256color
  zsh-completions
)

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
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

chpwd() {
  ls -lpht --group-directories-first
}

export WORKON_HOME=~/Envs
source /home/shivam/.local/bin/virtualenvwrapper.sh

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export GOBIN=$GOPATH/bin


alias wthr="curl https://wttr.in"

alias gs="git status -b --show-stash"
alias gcm="git checkout master"
alias gp="git pull"

alias zshrc="sudo nano ~/.zshrc"
alias srcz="source ~/.zshrc"

alias tg="telegram-cli"

alias upd="sudo apt-fast update && apt list --upgradable"
alias upg="apt list --upgradable && sudo apt-fast upgrade -y"
alias inst="sudo apt-fast install"


alias rb="cd ~/projects/backend && workon rb"
alias rs="workon rb && ~/projects/backend/manage.py runserver"
alias shell="./manage.py shell"

alias neptune="cd /home/shivam/projects/partner-portal/neptune"

alias top="gotop"
alias oldtop="/usr/bin/top"

alias did="vim +'normal Go' +'r!date' ~/did.txt"
alias ping="ping -nOi 0.5"
alias bc="bc -l"
alias lshw="sudo lshw -short"

alias l="ls -lpht --group-directories-first"
alias rig="rig -c 5"

alias lg="lazygit"
alias lazygit="/home/shivam/go/bin/lazygit"

alias code="code-insiders"

alias caa='${HOME}/bin/caa -s && ${HOME}/bin/caa -d'

alias prettyping="/home/shivam/Downloads/Packages/prettyping/prettyping -nOi 0.2"

alias reddit='rtv --theme solarized-dark'

alias dev='ssh shivam@dev.renewbuy.com'

if [ -d "/home/shivam/projects/android/fastboot/platform-tools" ] ; then
 export PATH="/home/shivam/projects/android/fastboot/platform-tools:$PATH"
fi


export BAT_THEME="Monokai Extended Bright"
