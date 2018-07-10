export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:$PATH

#keep it friendly
#echo "Good morning, Veronica! What fantastic thing are you building today?"

#give your terminal your name instead of having it call use you USER
# export USER="veronica" # commented out so other programs don't think I'm veronica ans not admin
#in terminal $ in front of USER will give you it's value

#allows me to use command line tools with postgres.app http://postgresapp.com/documentation/cli-tools.html
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

#export PS1=">> " sets the command prompt variable and exports the variable. \\
#Here we change the default command prompt from $ to >>

#can make your own scripts and store in bin

#env | grep PATH finds the path your env is stored in

#how to make your own keybindings
#alias pd="pwd"

#came from virtualenv
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Devel

bind "set completion-ignore-case on"

alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white)"'
#export PS1="$BLUE\w$YELLOW\$(__git_ps1) $RED_BOLD> $RESET" #tells you what branch ypu are on
alias rm='rm -i'

#virtualenv
#source /usr/local/bin/virtualenvwrapper.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# added by Anaconda2 4.2.0 installer
export PATH="/Users/Admin/anaconda2/bin:$PATH"

# added by Anaconda3 5.0.1 installer
export PATH="/anaconda3/bin:$PATH"

# terminal tells you random nice things via http://hints.macworld.com/article.php?story=20070508235210333
awk "{ lines[NR] = $0 } END { print lines[$RANDOM % NR + 1] }" /Users/Admin/quotes_for_terminal.txt
python3 /Users/Admin/randline.py /Users/Admin/quotes_for_terminal.txt


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. 

### added at the suggestion of Udacity
# Enable tab completion
source ~/.udacity-terminal-config/git-completion.bash

# Change command prompt
source ~/.udacity-terminal-config/git-prompt.sh

# colors!
red="\[\033[38;5;203m\]"
green="\[\033[38;05;38m\]"
blue="\[\033[0;34m\]"
reset="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$red\u$green\$(__git_ps1)$blue \W
$ $reset"
### end Udacity changes