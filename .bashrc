# To make updated .bashrc file reflect in current bash session,
# run the "source ~/.bash_profile" command after updating this file.
# IMP : This will reflect the latest "added" changes, but it does not
# remove the "removed" changes. For that you will need to restart bash.

# Path aliases
alias fcf="find . -iname"			# find (find) file by name, ignoring the case, (-iname) in current folder (.)
alias frf="find ~ -iname"			# find (find) file by name, ignoring the case, (-iname) in root folder (~)

alias win="explorer ."				# open windows explorer at current path
alias clc="clear -x"				# clear screen, but allow scroll back

# Long list - no owner, no group, human-readable sizes, directories first + ...
alias lln="ll -g -G -h --group-directories-first"		# sort by name
alias lle="ll -g -G -h --group-directories-first -X"		# sort by file extension
alias lls="ll -g -G -h --group-directories-first -S"		# sort by file size
# Short list - 1 per line, directories first + ...
alias lsn="ls -1 --group-directories-first"			# sort by name
alias lse="ls -1 --group-directories-first -X"			# sort by file extension
alias lss="ls -1 --group-directories-first -S"			# sort by file size

#alias recent="!r(){git for-each-ref --sort=-committerdate refs/heads --format='%(HEAD)%(color:yellow)%(refname:short)|%(color:bold green)%(committerdate:relative)|%(color:blue)%(subject)|%(color:magenta)%(authorname)%(color:reset)' --color=always | column -ts'|'}; r"
#recent= !git for-each-ref --sort=-committerdate refs/heads --format='%(HEAD)%(color:yellow)%(refname:short)|%(color:bold green)%(committerdate:relative)|%(color:blue)%(subject)|%(color:magenta)%(authorname)%(color:reset)' --color=always | column -ts'|'

#r() {git for-each-ref --sort=-committerdate refs/heads --format='%(HEAD)%(color:yellow)%(refname:short)|%(color:bold green)%(committerdate:relative)|%(color:blue)%(subject)|%(color:magenta)%(authorname)%(color:reset)' --color=always | column -ts'|';};

# Functions

# Function to see a specific section from a source file
# Section defined in the source file has to be start with "___SECTION___" and end has to be "xxxSECTIONxxx"
# Example sections : CODE INFO ARGS CONSTANTS DEBUG OUTPUT etc.
# Usage: section CODE rep.sh
sec() { sed -n -e "/___$1___/,/xxx$1xxx/p" "$2" ; } ;

# Function to see a specific line from a source file
# Usage: line 11 rep.sh
line() { sed "$1q;d" "$2" ; } ;
