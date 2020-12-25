# ~/.bashrc 

# Custom Bash alias settings
alias sb="source ~/.bashrc"
alias vib="vi ~/.bashrc"
alias cab="cat ~/.bashrc"

alias ll="ls -la"
alias l="ll"

alias hi="history"

cdls ()
{
	\cd "$@" && ls -la
}
alias cd="cdls"

alias a="cd .."

alias cdw="cd ~/work"
alias cdh="cd /mnt/c/Users/user"

alias nr="npm run "

alias qq="exit"

# Custom Git alias settings
alias gpl="git pull"
alias gb="git branch"
alias gba="gb -a"
alias gce="git checkout"
alias gs="git status"
alias ga="git add ."
alias gco="git commit -m"
alias gpu="git push -u origin"
alias gl="git log --oneline --graph"
alias glo="git log --oneline --graph"

# Custom Github cli alias settings
alias grc="gh repo crete"
alias grv="gh repo view"
alias gpc="gh pr create -f"
alias gpm="gh pr merge -m"
alias gpv="gh pr view"

# wsl login auto run script
#cdw

