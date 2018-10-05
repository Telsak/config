# egna aliases
alias ..='cd ..'
alias apt='sudo apt'
alias update='apt update && apt list --upgradable'
#alias vim='nvim'

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

#gets the size of all current directories/content in the current directory
alias lss='du -hs * | sort -hr'

alias h='history'
alias j='jobs -l'
alias t='task'

# create parent directory on command
alias mkdir='mkdir -pv'

# useful shortcuts/new commands
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias sudo='sudo '
alias h10='history | awk '\''{$1=""; print $0}'\'' | sort | uniq -c | sort -nr | head -n10'

# network related
alias ping='ping -c 5'
alias fping='ping -c 100 -s.2'
alias ports='netstat -tulanp'

# Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'




