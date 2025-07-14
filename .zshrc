# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="/opt/homebrew/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$HOME/.nvm/versions/node:$PATH"
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
export GOROOT=/usr/local/go
export PATH="/usr/local/bin:$PATH"
export CARGO_NET_GIT_FETCH_WITH_CLI=true
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$HOME/nvim/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="$PATH:$HOME/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/eudaimonia/.lmstudio/bin"
export ELASTIC_PASSWORD="4EycmbedAM*TFbs5miFZ"
## Flag
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(   
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  z    
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
function load_ghcup() {
  [ -f "/home/anoencs/.ghcup/env" ] && source "/home/anoencs/.ghcup/env" # ghcup-env
}
function load_nvm() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  nvm use 20
}
# Load Angular CLI autocompletion.
function load_ng() {
  source <(ng completion script)
}

function load_swap() {
  echo Y | sudo tee /sys/module/zswap/parameters/enabled
}

if ! groups | grep -q docker; then
    newgrp docker
fi

alias todo='todo ~/TODO'
alias tmux-session='sh ~/app_run/tmux-session'

# zprof
export JIRA_API_TOKEN=ATATT3xFfGF0dMip--REWs9Qg3nJJYKikoQhrJrWpBzc8Pia5KyeGq1q1MSOqY1Ae2Lz7PW118QdwuWrEh_ew99yOK9KnkV5DWCtXu7DsTCkRLxEU7crcHQnw2X3wC8Kb-vAqrFdXQvoRxJLFgUV5TUoSSpBKHjPOSWXMWCBpjG-JKhIjcGRCW8=B77AFDA4
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
" --color=bg+:#3c3836,bg:#282828,spinner:#8ec07c,hl:#83a598"\
" --color=fg:#bdae93,header:#83a598,info:#fabd2f,pointer:#8ec07c"\
" --color=marker:#8ec07c,fg+:#ebdbb2,prompt:#fabd2f,hl+:#83a598"

alias lg='lazygit'
alias ld='lazydocker'
alias lj='lazyjournal'
#alias v='nvim'
alias v='fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim'
alias e='emacs --no-window-system'
alias cls='clear'
alias cb='cargo build'
alias cr='cargo run'
alias gr='go run .'
alias ms='make start'
alias cw='cargo watch -x run'
#alias open='xdg-open'
alias ct='cargo test'
alias gp='git pull'
alias dev-server='sudo ssh -i "openedu.pem" ubuntu@ec2-13-251-137-136.ap-southeast-1.compute.amazonaws.com'
alias staging-server='sudo ssh -i "openedu.pem" ubuntu@ec2-13-212-32-218.ap-southeast-1.compute.amazonaws.com'
alias ai-server='sudo ssh -i "ai-hackathon.pem" ec2-user@ec2-54-169-20-247.ap-southeast-1.compute.amazonaws.com'
alias hp='http-prompt'
alias hplocal='http-prompt http://localhost:8000 --spec=http://localhost:8000/api-doc/openapi.json --env $HOME/http_prompt/local'
alias wrangler='npx wrangler'
alias railway='npx railway'
alias ghb='gh browse'
alias todo='pls'
alias nvc='cd $HOME/.config/nvim && nvim'
alias imgcat='wezterm imgcat'



# Created by `pipx` on 2024-07-03 16:52:24
export PATH="$PATH:/Users/eudaimonia/.local/bin"

# pnpm
export PNPM_HOME="/home/eudaimonia/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# function modify
open() {
    if [[ $1 =~ ^[0-9]+$ ]] && [ $1 -le 65535 ]; then
        xdg-open "http://localhost:$1"
    else
        xdg-open "$1"
    fi
}

pfont() {
  if [ -z "$1" ]; then
    echo "Usage:"
    echo "  pfont f487              # Simple hex (adds \\u prefix)"
    echo "  pfont db80dc4a          # Surrogate pair as concatenated hex"
    echo "  pfont db80 dc4a         # Surrogate pair as two arguments"
    echo "  pfont \\uf487            # Direct Unicode escape"
    echo "  pfont \\udb80\\udc4a      # Direct surrogate pair"
    return 1
  fi

  python3 -c "
import sys

def handle_surrogate_pair(high_hex, low_hex):
    '''Convert UTF-16 surrogate pair to Unicode codepoint'''
    try:
        high = int(high_hex, 16)
        low = int(low_hex, 16)
        
        # Check if valid surrogate pair
        if 0xd800 <= high <= 0xdbff and 0xdc00 <= low <= 0xdfff:
            # Convert to Unicode codepoint
            codepoint = 0x10000 + ((high - 0xd800) << 10) + (low - 0xdc00)
            return chr(codepoint)
        else:
            return None
    except:
        return None

def process_input(arg1, arg2=None):
    '''Process different input formats'''
    
    # Case 1: Two arguments (surrogate pair)
    if arg2:
        char = handle_surrogate_pair(arg1, arg2)
        if char:
            return char
        else:
            return f'Invalid surrogate pair: {arg1} {arg2}'
    
    # Case 2: Direct Unicode escape sequence
    if arg1.startswith('\\\\u'):
        try:
            return arg1.encode().decode('unicode_escape')
        except:
            return f'Invalid Unicode escape: {arg1}'
    
    # Case 3: Single hex string
    if len(arg1) == 4:
        # Simple 4-digit hex (like f487)
        try:
            return chr(int(arg1, 16))
        except:
            return f'Invalid hex: {arg1}'
    
    # Case 4: 8-digit hex (potential surrogate pair as concatenated string)
    elif len(arg1) == 8:
        high_hex = arg1[:4]
        low_hex = arg1[4:]
        char = handle_surrogate_pair(high_hex, low_hex)
        if char:
            return char
        else:
            # Try as single Unicode codepoint
            try:
                return chr(int(arg1, 16))
            except:
                return f'Invalid hex or surrogate pair: {arg1}'
    
    # Case 5: Other length hex
    else:
        try:
            return chr(int(arg1, 16))
        except:
            return f'Invalid hex: {arg1}'

# Get arguments
args = sys.argv[1:]
if len(args) == 1:
    result = process_input(args[0])
elif len(args) == 2:
    result = process_input(args[0], args[1])
else:
    result = 'Too many arguments'

print(result)
" "$@"
}




# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/eudaimonia/google-cloud-sdk/path.zsh.inc' ]; then . '/home/eudaimonia/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/eudaimonia/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/eudaimonia/google-cloud-sdk/completion.zsh.inc'; fi
