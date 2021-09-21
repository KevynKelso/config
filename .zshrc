# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.  # export PATH=$HOME/bin:/usr/local/bin:$PATH

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Source custom aliases file
if [ -f ~/.zsh/aliases ]; then
    source ~/.zsh/aliases
else
    print "File not found: ~/.zsh/aliases"
fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/kkelso/.oh-my-zsh"
export GOPATH="/Users/kkelso/go"
export PATH="/Users/kkelso/Desktop/projects/scripts/bin/hlit:/Users/kkelso/Desktop/projects/scripts/bin:/usr/local/opt/llvm/bin/:/usr/local/bin/chromedriver:$GOPATH/bin:$PATH"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
POWERLEVEL9K_MODE="awesome-patched"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
    git
    vi-mode
    zsh-syntax-highlighting

)
#Sets terminal prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv vi_mode dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status battery ram)
#Left elements
POWERLEVEL9K_VIRTUALENV_FOREGROUND='000'
POWERLEVEL9K_VIRTUALENV_BACKGROUND='190'
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='213'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='000'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='213'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='015'
POWERLEVEL9K_DIR_HOME_FOREGROUND='190'
POWERLEVEL9K_DIR_HOME_BACKGROUND='000'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='000'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='084'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='084'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='000'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='190'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='000'
#Right elements
POWERLEVEL9K_STATUS_FOREGROUND='010'
POWERLEVEL9K_STATUS_BACKGROUND='000'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='000'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='039'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='039'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='000'
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='000'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='196'
POWERLEVEL9K_RAM_FOREGROUND='000'
POWERLEVEL9K_RAM_BACKGROUND='039'
source $ZSH/oh-my-zsh.sh

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

#determines search program for fzf
if type ag &> /dev/null; then
    export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi
#refer rg over ag
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
unalias g
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias capi='python3 /Users/kkelso/Desktop/projects/capi/src/main.py'
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# ------------------------------------------------------------
# Axolotl
# ------------------------------------------------------------
export GITHUB_USER=bscs-dev-team
export GITHUB_PASSWORD=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
export BSP_PATH=/Users/kkelso/Desktop/projects/bsp-parent/bsp/
export AXOLOTL_PATH=/Users/kkelso/Desktop/projects/bsp-parent/axolotl



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# ------------------------------------------------------------
# Font Awesome Pro
# ------------------------------------------------------------
export FONTAWESOME_NPM_AUTH_TOKEN="A4C07AF9-A300-4AE3-9FFC-4D54A7BA41EC"
export BSCS_DEV_TEAM_NPM_AUTH_TOKEN="bbb9e78f-f129-42e6-bf1b-8f752bbbef30"
export DOCKER_GIT_CREDENTIALS=https://bscs-dev-team:d61f96d0b3932c6a056901d8d22e6b483a71f1ae@github.com
export GOPRIVATE=github.com/bscs-science-learning/*

PATH="/Users/kkelso/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/kkelso/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/kkelso/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/kkelso/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/kkelso/perl5"; export PERL_MM_OPT;


export FAUNADB_PUBLIC_KEY="fnAEHbSfi3ACB5-Bb9pXEKnK46TXnAtd1Y4mVCTK"
export FAUNADB_TESTAPI_KEY="fnAEHbSUtMACB7fRPv02KTctds2O-vca1u_urxOp"
export FAUNADB_PUBLIC_ITEMS_KEY="fnAEKqDQC7ACCWJo2XDuRGUyCaCPPL0reu3c2agS"
export FAUNA_CLI_KEY="fnAEHv5ACsACAI5G-Y9Khjx6VW3q9P3ycDTc5F0z"
export FAUNADB_ADMIN_CLI="fnAEHv5ACsACAI5G-Y9Khjx6VW3q9P3ycDTc5F0z"
export MAIL_HOST="outlook.office365.com"
export MAIL_PORT="587"
export SENDER_MAIL="support@bscs.org"
export SENDER_PASS="Poole)Beard)00**"
export DO_SPACE_KEY="QQIAYHFEGIYTXUNMCIZC"
export DO_SPACE_SECRET="tAt5tcD1oNTg69WDQPkpkdpetEEVHEKUYy86XaOTW8E"
export URL="127.0.0.1:3000"
