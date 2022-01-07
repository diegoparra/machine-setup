
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set system variables
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

export EDITOR="nvim"
export VISUAL="nvim"


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	aws
	docker
	tmux
    web-search
    zsh-syntax-highlighting
	zsh-autosuggestions
 )


source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

### Common Aliases
alias wkt="${HOME}/Documents/wkt"
alias v="nvim"
alias gs="git status"

alias red="${HOME}/Documents/wkt/linkfire/Redirector3"

### K8S aliases
alias k="kubectl"

alias kcx="kubectx"
alias kns="kubens"
alias kgp="kubectl get pods"
alias kd="kubectl delete pod"
alias kx="kubectl exec -it"

  # Common actions
  alias describe="k describe"
  alias get="k get"
  alias create="k create"
  alias apply="k apply"
  alias delete="k delete"
  alias scale="k scale"
  alias rollout="k rollout"
  alias logs="k logs"

  # Query common resources
  # Resource reference list:
  # pods (po), services (svc), deployments, replicasets (rs)
  # replicationcontrollers (rc), nodes (no), events (ev),
  # limitranges (limits), persistentvolumes (pv),
  # persistentvolumeclaims (pvc), resourcequotas (quota),
  # namespaces (ns), serviceaccounts (sa), ingresses (ing),
  # horizontalpodautoscalers (hpa), daemonsets (ds), configmaps,
  # componentstatuses (cs), endpoints (ep), and secrets.
  alias podp="get pods -o wide -n default"
  alias pods="get pods -o wide -n staging"
  alias podi="get pods -o wide -n integration"
  alias podm="get pods -o wide -n monitoring"
  alias podk="get pods -o wide -n kube-system"
  alias kl="logs -f"
  alias services="get svc"
  alias deployments="get deployments"
  alias replicasets="get rs"
  alias replicationcontrollers="get rc"
  alias rc="get rc"
  alias nodes="get nodes"
  alias limitranges="get limitranges"
  alias limits="get limitranges"
  alias events="get events"
  alias persistentvolumes="get pv"
  alias pv="get pv"
  alias persistentvolumeclaims="get pvc"
  alias pvc="get pvc"
  alias namespaces="get ns"
  alias ingresses="get ing"
  alias ing="get ing"
  alias configmaps="get configmaps"
  alias secrets="get secrets"

# Add kubectl auto complete
source <(kubectl completion zsh)
export HISTTIMEFORMAT="%d/%m/%y %T "

#source /home/parra/kube-ps1/kube-ps1.sh
#PROMPT='$(kube_ps1)'$PROMPT
#KUBE_PS1_CTX_COLOR="green"
#export PATH=$HOME/bin:$PATH



# KUBEPS1
function kube-toggle() {
  if (( ${+POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND} )); then
    unset POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND
  else
    POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND='kubectl|helm|kubens|kubectx|oc|istioctl|kogito|k9s|helmfile|flux|fluxctl|stern'
  fi
  p10k reload
  if zle; then
    zle push-input
    zle accept-line
  fi
}

zle -N kube-toggle
bindkey '^]' kube-toggle  # ctrl-] to toggle kubecontext in powerlevel10k prompt
kube-toggle

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Go export
export PATH=$PATH:/usr/local/go/bin
