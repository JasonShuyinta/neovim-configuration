# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"

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
#DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
#DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-kubectl-prompt)

source $ZSH/oh-my-zsh.sh
source /home/shuy/zsh-prompt/zsh-kubectl-prompt
autoload -U colors; colors
# User configuration
#RPROMPT='%{$fg[white]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'
function right_prompt() {
  local c_color="blue"
  local ns_color="blue"

  if [[ "$ZSH_KUBECTL_CONTEXT" =~ "gke_sas-amoscentral_europe-west6_amoscentral-production-gke" ]]; then
    c_color="red"
  elif [[ "$ZSH_KUBECTL_CONTEXT" =~ "prdkube" ]]; then
    c_color="magenta"
  elif [[ "$ZSH_KUBECTL_CONTEXT" =~ "gke_sas-amoscentral_europe-west6_amoscentral-infra-test-gke" ]]; then
    c_color="green"
  fi
  if [[ "$ZSH_KUBECTL_NAMESPACE" =~ "amoscentral-production" ]]; then
    ns_color="red"
  elif [[ "$ZSH_KUBECTL_NAMESPACE" =~ "amoscentral-acceptance" ]]; then
    ns_color="green"
  elif [[ "$ZSH_KUBECTL_NAMESPACE" =~ "amoscentral-qa" ]]; then
    ns_color="yellow"
  elif [[ "$ZSH_KUBECTL_NAMESPACE" =~ "amoscentral-perf" ]]; then
    ns_color="magenta"
  elif [[ "$ZSH_KUBECTL_NAMESPACE" =~ "b2b" ]]; then
    ns_color="white"
  fi
  

  echo "%{$fg[$c_color]%}($ZSH_KUBECTL_CONTEXT)%{$reset_color%}:%{$fg[$ns_color]%}($ZSH_KUBECTL_NAMESPACE)%{$reset_color%}"
}
RPROMPT='$(right_prompt)'
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
# Example aliases#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias update="sudo yum update"
alias c="clear"
alias ll="ls -la"
alias k="kubectl"
alias startdocker="sudo systemctl start docker.service"
alias stopdocker="sudo systemctl stop docker.service"
alias restartdocker="sudo systemctl restart docker.service"
alias statusdocker="sudo systemctl status docker.service"
#alias du="docker compose up -d"
alias dockerstop="docker compose stop"
alias ddv="docker compose down --rmi all -v --remove-orphans"
alias dd="docker compose down --rmi all --remove-orphans"
alias di="docker images"
alias dp="docker ps"
alias dockerpa="docker ps -a"
alias kgs="kubectl get service"
alias kgd="kubectl get deployment"
alias kgp="kubectl get pod"
alias kdd="kubectl delete deployment"
alias kds="kubectl delete svc"
alias kga="kubectl get all"
alias kl="kubectl logs"
alias changens="kubectl config set-context --current --namespace="
alias amos-prod="kubectl config set-context --current --namespace=amoscentral-production"
alias amos-acc="kubectl config set-context --current --namespace=amoscentral-acceptance"
alias amos-qa="kubectl config set-context --current --namespace=amoscentral-qa"
alias amos-perf="kubectl config set-context --current --namespace=amoscentral-perf"
alias amos-b2b="kubectl config set-context --current --namespace=b2b"
alias ka="kubectl apply -f" 
alias ministart="minikube start"
alias minidash="minikube dashboard"
alias miniip="minikube ip"
alias kdes="kubectl describe"
alias ..="cd .."
alias kg="kubectl get"
alias kd="kubectl delete"
alias h="helm"
alias hi="helm install"
alias hu="helm upgrade"
alias hd="helm delete"
alias hl="helm list"
alias ht="helm template"
alias k9s="docker run --rm -it -v ~/.kube/config:/root/.kube/config quay.io/derailed/k9s"
alias gke="gcloud container clusters get-credentials gkekube --region europe-west6-a"
alias get-contexts="kubectl config get-contexts"
alias devkube="kubectl config use-context shuy@devkube"
alias prdkube="kubectl config use-context shuy@prdkube"
alias prodgke="kubectl config use-context gke_sas-amoscentral_europe-west6_amoscentral-production-gke"
alias testgke="kubectl config use-context gke_sas-amoscentral_europe-west6_amoscentral-infra-test-gke"
alias showcontainers="kubectl get pods -o jsonpath=\"{.items[*].spec['initContainers', 'containers'][*].image}\" | tr -s '[[:space:]]' '\n' | sort | uniq -c"
alias t="tree -L 1"
alias g="grep"
alias nvim="~/nvim/nvim.appimage"
alias gs="git status"
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
