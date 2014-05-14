ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git autojump)
source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vi="/Applications/MacVim.app/Contents/MacOS/Vim"
alias node="node -harmony"
alias node-debug="node --debug=5858"
alias node-debug-brk="node --debug-brk=5858"
alias py="python"
alias pegjs="~/Dropbox/projects/pegjs/bin/pegjs"
alias t='todo.sh'

# export system path
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/share/npm/bin:/opt/local/bin:~/Dropbox/projects/x10-2.3.0_macosx_x86/bin:`pwd`/depot_tools
# set encoding for building jekyll sites
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
