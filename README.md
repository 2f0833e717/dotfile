# dotfile

<!-- # Badges -->

[![Github issues](https://img.shields.io/github/issues/2f0833e717/manual)](https://github.com/2f0833e717/manual/issues)
[![Github forks](https://img.shields.io/github/forks/2f0833e717/manual)](https://github.com/2f0833e717/manual/network/members)
[![Github stars](https://img.shields.io/github/stars/2f0833e717/manual)](https://github.com/2f0833e717/manual/stargazers)
[![Github top language](https://img.shields.io/github/languages/top/2f0833e717/manual)](https://github.com/2f0833e717/manual/)
[![Github license](https://img.shields.io/github/license/2f0833e717/manual)](https://github.com/2f0833e717/manual/)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [How does it work?(bash_alias)](#how-does-it-workbash_alias)
  - [1. custom bash alias(](#1-custom-bash-alias)
  - [2. git auto deployment comannds](#2-git-auto-deployment-comannds)
- [how to devops(dev ~ ci/cd)](#how-to-devopsdev--cicd)
  - [step1. clone to project](#step1-clone-to-project)
  - [step2. edit & update](#step2-edit--update)
  - [step3. push to git](#step3-push-to-git)
- [sample script](#sample-script)
  - [My dotfile upload to Git](#my-dotfile-upload-to-git)
  - [copy home path dotfile -> dotfile project(work)](#copy-home-path-dotfile---dotfile-projectwork)
  - [copy dotfile project(work) -> home path dotfile & reloading](#copy-dotfile-projectwork---home-path-dotfile--reloading)
  - [Custom bash deploy echo alias settings](#custom-bash-deploy-echo-alias-settings)
  - [Custom Git alias settings](#custom-git-alias-settings)
  - [Custom Github cli alias settings](#custom-github-cli-alias-settings)
  - [Custom bash deploy alias settings](#custom-bash-deploy-alias-settings)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# How does it work?(bash_alias)
this is linux(ubuntu-18.04/20.04)'s dotfile

## 1. custom bash alias(
* bash
* vi
* vscode
* windows-command-exe
* git-command
* github-comannd
* ...)

## 2. git auto deployment comannds
* git checkout
* git pull
* git branch
* git status
* git add
* git commit
* git push
* gh pr create
* gh pr merge
* git pull
* git log
* gh pr list
* gh repo view

# how to devops(dev ~ ci/cd)

## step1. clone to project
```bash
mkdir ~/work/
cd ~/work/
git clone https://github.com/2f0833e717/dotfile
cd dotfile
```

## step2. edit & update
```bash
# edit .dotfiles
vi ~/work/.bash_alias
# cpb is work -> home dotfile(save)
cpb

# if dev & alias testing
vi ~/.bash_alias
# sb is bash loading test(error check)
sb
```

## step3. push to git
```bash
upb
```


# sample script
!no maintenance. new files is get clone project!

## My dotfile upload to Git
```bash
alias upbb="
	cd ~/work/dotfile
	coba && gpadaa && cpba
	cd -"
alias upb="upbb"
```

## copy home path dotfile -> dotfile project(work)
```bash
alias cob="
	cp -rf ~/.bash_aliases ~/work/dotfile/
	cp -rf ~/.bash_profile ~/work/dotfile/
	cp -rf ~/.bashrc ~/work/dotfile/
	cp -rf ~/.gitconfig ~/work/dotfile/
	cp -rf ~/.profile ~/work/dotfile/
	cp -rf ~/.vim ~/work/dotfile/
	cp -rf ~/.vimrc ~/work/dotfile/"
```

## copy dotfile project(work) -> home path dotfile & reloading
```bash
alias cpb="
	cp -rf ~/work/dotfile/.bash_aliases ~/
	cp -rf ~/work/dotfile/.bash_profile ~/
	cp -rf ~/work/dotfile/.bashrc ~/
	cp -rf ~/work/dotfile/.gitconfig ~/
	cp -rf ~/work/dotfile/.profile ~/
	cp -rf ~/work/dotfile/.vim ~/
	cp -rf ~/work/dotfile/.vimrc ~/
	sb"
alias sb="source ~/.bashrc"
```

```bash
# ~/.bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

## Custom bash deploy echo alias settings
```bash
echoo(){
	echo "======== alias ========"
}
alias gceda="echoo && alias gced && gced"
alias gpla="echoo && alias gpl && gpl"
alias gbaa="echoo && alias gba && gba"
alias gsta="echoo && alias gst && gst"
alias gada="echoo && alias gad && gad"
alias gcoaa="echoo && alias gcoa && gcoa"
alias gpuda="echoo && alias gpud && gpud"
alias gpca="echoo && alias gpc && gpc"
alias gpma="echoo && alias gpm && gpm"
alias gloa="echoo && alias glo && glo"
alias gplca="echoo && alias gplc && gplc"
alias grvwa="echoo && alias grvw && grvw"
alias coba="echoo && alias cob && cob"
alias cpba="echoo && alias cpb && cpb"
alias gpadaa="echoo && alias gpada && gpada"
alias gpadna="echoo && alias gpadn && gpadn"
```

## Custom Git alias settings
```bash
alias gcl="git clone"
alias gpl="git pull origin master"
alias gb="git branch"
alias gba="git branch -a"
alias gce="git checkout"
alias gced="git checkout dev"
alias gcebd="git checkout -b dev"
alias gst="git status"
alias gs="gst"
alias gad="git add ."
alias ga="gad"
alias gco="git commit -m"
alias gcoa="git commit -m 'fix: update'"
alias gpu="git push -u"
alias gpum="git push -u origin master"
alias gpud="git push -u origin dev"
alias glo="git log --oneline --graph -n 12"
alias gl="glo"
alias gdi="git diff"
alias gd="gdi"
```

## Custom Github cli alias settings
```bash
alias grc="gh repo create"
alias grv="gh repo view"
alias gv="grv"
alias grvw="gh repo view --web"
alias gvw="grvw"
alias gpc="gh pr create -f"
alias gpm="gh pr merge -m"
alias gpv="gh pr view"
alias gplc="gh pr list -s closed -L 16"
alias gpvw="gh pr view -w"
alias gpv="gpvw"
```

## Custom bash deploy alias settings
```bash
alias gpada="gceda && gpla && gbaa && gsta && gada && gcoaa && gpuda && gpca && gpma && gpla && gloa && gplca && grvwa"
alias gpadn="gceda && gpla && gada && gcoaa && gpuda && gpca && gpma && gpla"
```



