export HISTSIZE=100000
export PATH=$HOME/macports/bin:$HOME/macports/sbin:$HOME/bin:$PATH
export MANPATH=$HOME/macports/share/man:$MANPATH
export PERL5LIB=$HOME/macports/lib/perl5/5.8.8:$HOME/macports/lib/perl5/vendor_perl/5.8.8:$PERL5LIB

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# export PS1="[\u:\w]\$ "

function prompt_command {
  #   How many characters of the $PWD should be kept
  local pwd_length=40
  if [ $(echo -n $PWD | wc -c | tr -d " ") -gt $pwd_length ]
    then newPWD="<$(echo -n $PWD | sed -e "s/.*\(.\{$pwd_length\}\)/\1/")"
    else newPWD="$(echo -n $PWD)"
  fi
}
PROMPT_COMMAND=prompt_command
export PROMPT_COMMAND
# PS1='\e[7m$newPWD [\u]:\[\e[0;m\] '
PS1='[$newPWD]$ '

export VIM_CRONTAB=true
# export PERL5LIB=${PERL5LIB}:~/perl5lib/lib:~/lib/perl5:~/perl5lib/lib/darwin-2level:~/lib/perl5/site_perl
# export MANPATH=~/perl5lib
PATH=$HOME/bin:$HOME/macports/bin:$HOME/macports/sbin:$HOME/macports/apache2/bin:$PATH
export MANPATH=$HOME/macports/man:$MANPATH
export PERL5LIB=$HOME/macports/lib/perl5/5.8.8:$HOME/macports/lib/perl5/vendor_perl/5.8.8:$HOME/lib/perl5:$PERL5LIB
export PAGER=most
export EDITOR=`which vim`
# PERLDOC_PAGER='less -r -f -+C'
alias l='ls -laF'
alias r='fc -s'
alias rr='cd ~/revinet/publishers.revinet.com/sites/publishers.revinet.com/system/application/'
alias wp='cd /Users/ivankruchkoff/webpres/system/application'
alias re='cd ~/revify'
alias rc='cd ~/apps/test_revinet/cruisecontrol-bin-2.8.3/'
alias rt='cd ~/apps/test_revinet/cruisecontrol-bin-2.8.3/projects/revinet/tests'
alias testsetup='perl -p -i -e "s/\@\@HOSTNAME\@\@/devik.publishers.revinet.com/g" */*.php'
alias tb='ssh administrator@192.168.6.150'
alias devfox='/Applications/Firefox.app/Contents/MacOS/firefox-bin -no-remote -console -P dev &'
alias chmox='chmod +x'
alias yc='java -jar ~/bin/yuicompressor-2.4.2.jar'
alias gc='java -jar ~/bin/compiler.jar'
alias ru='aspell -l ru dump master|aspell -l ru expand |less'
alias vim='mvim'
set -o vi
# cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# cd into the old directory
alias bd='cd "$OLDPWD"'
# ls aliases
alias ll='ls -l'
alias la='ls -A'
alias lt='ls -laptr' #oldest first sort
alias labc='ls -lap' #alphabetical sort
# Git related
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gd='git diff'
alias gb='git branch'
alias gl='git log'
alias gsb='git show-branch'
alias gco='git checkout'
alias gg='git grep'
alias gk='gitk --all'
alias gr='git rebase'
alias gri='git rebase --interactive'
alias gcp='git cherry-pick'
alias grm='git rm'
