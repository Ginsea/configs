# .bashrc

PATH="$HOME/bin:$PATH" ; export PATH
#PATH=$HOME/bin:/cygdrive/c/Users/astrodoo/Anaconda3/Scripts:$PATH ; export PATH
#PATH="c:\cygwin64\home\David\bin:$PATH" ; export PATH

#PATH=/usr/local/go/bin:$HOME/bin:/usr/X11R6/bin:/usr/libexec/git-core:/usr/local/bin:/usr/loca/sbin:$PATH ; export PATH

# prompt setting
# set prompt='%m %'
# set prompt = "%m:%s %~> "
# Color mapping
grey='\[\033[1;30m\]'
red='\[\033[0;31m\]'
RED='\[\033[1;31m\]'
green='\[\033[0;32m\]'
GREEN='\[\033[1;32m\]'
yellow='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
purple='\[\033[0;35m\]'
PURPLE='\[\033[1;35m\]'
white='\[\033[0;37m\]'
WHITE='\[\033[1;37m\]'
blue='\[\033[0;34m\]'
BLUE='\[\033[1;34m\]'
cyan='\[\033[0;36m\]'
CYAN='\[\033[1;36m\]'
NC='\[\033[0m\]'

#PS1="\[\e[33;1m\]\u@\[\e[33;1m\]\h \[\e[36;1m\]\W> \[\e[0m\]"
PS1="\[\e]0;\w\a\]$PURPLE\u@$green\h $blue\W> \[\e[0m\]"
#PS1="$PURPLE\u@$green\h $blue\W> \[\e[0m\]"

# title and tab title
#PROMPT_COMMAND='echo -ne "\033];${HOSTNAME}\007"'

# Terminal color setting
#setenv TERM xterm-color
#set CLICOLOR="YES"; setenv CLICOLOR
#set LSCOLORS="cxdxfxdxcxdxdxhbadexex"; setenv LSCOLORS

# for color ls
# check the color through
# https://misc.flogisoft.com/bash/tip_colors_and_formatting
export LS_COLORS='rs=0:di=01;34:ln=01;35:mh=00:pi=40;33:ex=38;5;202'
alias ls='ls -G --color=always'
alias la='ls -altrh --color=always'

# alias for server connection
alias aci1="ssh -Y dyoon5@aci-service-1.chtc.wisc.edu"
alias aci2="ssh -Y dyoon5@aci-service-2.chtc.wisc.edu"
alias bluewater="ssh -X yoon2@bw.ncsa.illinois.edu"
alias summithome="ssh astrodoo@home.ccs.ornl.gov"
alias summit="ssh astrodoo@summit.olcf.ornl.gov"
alias rhea="ssh astrodoo@rhea.ccs.ornl.gov"
alias beluga="ssh astrodoo@beluga.computecanada.ca"

# alias
alias vi="/usr/bin/vim"

alias python="/cygdrive/c/Users/astrodoo/Anaconda3/python.exe -i"

# for Tex
#PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:/Users/astrodoo/:$PATH ; export PATH
#TEXINPUTS=.:/Users/astrodoo/astronat//:$TEXINPUTS ; export TEXINPUTS
#BSTINPUTS=.:/Users/astrodoo/astronat//:$BSTINPUTS ; export BSTINPUTS
#BIBINPUTS=.:/Users/astrodoo/astronat//:$BIBINPUTS ; export BIBINPUTS

# set command like vi-editing mode
set -o vi

export HOMEDS="d:\\"

# all python environment variables are inherited by Windows User Variables
#export PYTHONPATH="$PYTHONPATH:$HOMEDS/lib/pylib" 
#export PYTHONSTARTUP="$HOMEDS/lib/pylib/startup.py" 
#export PYTHONDATA=$HOMEDS/Outcomes/pydata/
#export PYTHONFIG=$HOMEDS/Outcomes/figures/

#export Today="$(date '+%y%m%d')"
#export Now="$(date +'%y%m%d-%H%M')"

# added by Anaconda2 4.2.0 installer
#export PATH="/Users/astrodoo/anaconda/bin:$PATH"

# Cygwin import only system path variables without user path variables, when it is accessed through ssh.
# Normally, user path variables are appended to the system path variable.
# To resolve this issue, the following script is added.
if [[ -n "$SSH_TTY" ]]; then
    #export PATH="/cygdrive/c/Users/astrodoo/Anaconda3:/cygdrive/c/Users/astrodoo/Anaconda3/Library/mingw-w64/bin:/cygdrive/c/Users/astrodoo/Anaconda3/Library/bin:/cygdrive/c/Users/astrodoo/Anaconda3/Scripts:/cygdrive/c/Users/astrodoo/AppData/Local/Programs/Microsoft VS Code/bin:/cygdrive/d/texlive/2018/bin/win32:$PATH"
    export PATH="$PATH:/cygdrive/c/Users/astrodoo/AppData/Local/Programs/Microsoft VS Code/bin:/cygdrive/d/texlive/2018/bin/win32"
fi
#if [ "$SSH_TTY" ]; then
#pushd . >/dev/null
#for __dir in \
#/proc/registry/HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Control/Session\ Manager/Environment \
#/proc/registry/HKEY_CURRENT_USER/Environment
#do
#	cd "$__dir"
#	for __var in *
#	do
#		__var=`echo $__var | tr '[a-z]' '[A-Z]'`
#		test -z "${!__var}" && export $__var="`cat $__var`" >/dev/null 2>&1
#	done
#done
#unset __dir
#unset __var
#popd >/dev/null
#fi


# Set-up for enabling intel compiler usage in Cygwin
#alias ifort='ifort -Qlocation,link,"$VCINSTALLDIR\\bin"'
alias ifort='ifort -Qlocation,link,"$VCINSTALLDIR\\Tools\\MSVC\\14.16.27023\\bin\\Hostx64\\x64"'
alias icl='icl -Qlocation,link,"$VCINSTALLDIR\\Tools\\MSVC\\14.16.27023\\bin\\Hostx64\\x64"'
# the VS path (containing link.exe) should be prior to other folders with link.exe
export PATH="/cygdrive/c/Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\Hostx64\x64:$PATH"

# set-up for activating Anaconda Environment (not successful yet)
#if [[ "${OSTYPE}" == 'cygwin' ]]; then
#    set -o igncr
#    export SHELLOPTS
#fi

#export PATH="/cygdrive/c/Users/astrodoo/Anaconda3:/cygdrive/c/Users/astrodoo/Anaconda3/Library/mingw-w64/bin:/cygdrive/c/Users/astrodoo/Anaconda3/Library/usr/bin:/cygdrive/c/Users/astrodoo/Anaconda3/Library/bin:/cygdrive/c/Users/astrodoo/Anaconda3/Scripts:/cygdrive/c/Users/astrodoo/AppData/Local/Programs/Microsoft VS Code/bin:/cygdrive/d/texlive/2018/bin/win32:$PATH"

# For enabling the usage of HDF5 library compiled by intel compiler.
# Since the HDF5 library in Anaconda is prior to the intel compiled HDF5,
# it should rearrange the PATH before it is used.
alias load_hdf5_intel='source ~/bin/load_hdf5_intel.sh'

alias f2py='/cygdrive/c/Users/astrodoo/Anaconda3/Scripts/f2py.bat'

# for ATA summer school in Amsterdam 2019 July
alias cartesius="ssh ccurs068@cartesius.surfsara.nl"


function settitle() {
      export PS1="\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ "
      echo -ne "\e]0;$1\a"
}
function settitlepath() {
      #export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ "
      export PS1="\[\e]0;\w\a\]$PURPLE\u@$green\h $blue\W> \[\e[0m\]"
}
