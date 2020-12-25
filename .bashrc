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

alias ..="cd .."
alias .=".."
alias a=".."

alias cdw="cd ~/work"
alias cdh="cd /mnt/c/Users/user"

alias nr="npm run "

alias qq="exit"

# Custom Git alias settings
alias ghrc="gh repo create"
alias gpl="git pull"
alias gb="git branch"
alias gba="gb -a"
alias gce="git checkout"
alias gp="git push -u origin"
alias gl="git log --oneline --graph"



# wsl login auto run script
cdw

