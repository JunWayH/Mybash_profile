export CLICOLOR=1
export TERM=xterm-256color
export PATH=/usr/bin:$PATH


function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
} 

# Bash Prompt
if [[ $- == *i* ]]
then
    NRM=`tput sgr0`
    BLD=`tput bold`
    ITL=`tput sitm`
    UL=`tput smul`
    RED=`tput setaf 1`
    GRN=`tput setaf 2`
    BLU=`tput setaf 4`
    WHI=`tput setaf 7`
    ORG=`tput setaf 3`
    PS1="\[${BLD}\]\[${WHI}\][\[${GRN}\]\t \[${BLU}\]\u\[${ORG}\]@\[${RED}\]\h \[${GRN}\]\w\[${WHI}\]] \$(parse_git_branch) \n\[${WHI}\]\\$ \[${NRM}\]"
fi
# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
