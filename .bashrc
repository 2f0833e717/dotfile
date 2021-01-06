# ~/.bashrc 

# Custom Bash color setting



# Custom Bash alias settings
alias sb="source ~/.bashrc"
alias vib="vi ~/.bashrc"
alias cab="cat ~/.bashrc"
alias cb="cab"
alias ca="cab"
alias cc="cab"
alias leb="less ~/.bashrc"
upbb (){
	cd ~/work/dotfile
	gpl
	gce dev
	rsync -a ~/.bashrc ~/work/dotfile/
	rsync -a ~/.vim ~/work/dotfile/
	rsync -a ~/.vimrc ~/work/dotfile/
	rsync -a ~/.gitconfig ~/work/dotfile/
	gpada
	cd -
	cpb
}
alias upb="upbb"
alias cpb="rsync -a ~/work/dotfile/ ~/ && sb"

alias ll="ls -la"
alias l="ll"

alias hi="history"
alias hig="hi | grep"

# Clipbord
#alias c="clip.exe"
# win32yank.exe
# https://github.com/equalsraf/win32yank/releases
alias c="win32yank.exe -i"
alias v="win32yank.exe -o"

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
alias gpl="git pull origin master"
alias gb="git branch"
alias gba="gb -a"
alias gce="git checkout"
alias gst="git status"
alias gs="gst"
alias gad="git add ."
alias ga="gad"
alias gco="git commit -m"
alias gcoauto="git commit -m fix:update"
alias gcoa="gcoauto"
alias gpu="git push -u"
alias gpum="git push -u origin master"
alias gpud="git push -u origin dev"
alias glo="git log --oneline --graph -n 12"
alias gl="glo"
alias gdi="git diff"
alias gd="gdi"

# Custom Github cli alias settings
alias grc="gh repo crete"
alias grv="gh repo view"
alias gv="grv"
alias grvw="grv --web"
alias gvw="grvw"
alias gpc="gh pr create -f"
alias gpm="gh pr merge -m"
alias gpv="gh pr view"
alias gplc="gh pr list -s closed -L 16"
alias gpvw="gh pr view -w"
alias gpv="gpvw"


alias gpada="gpl && gba && gst && gad && gcoa && gpu && gpc && gpm && gpl && glo && gplc && grvw"
alias gpad="gpl && gad && gcoa && gpc && gpm"

#wsl login auto run script
#cdw

