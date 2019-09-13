# .bashrc


PATH=$HOME/bin:$PATH ; export PATH


#PATH=/usr/local/go/bin:$HOME/bin:/usr/X11R6/bin:/usr/libexec/git-core:/usr/local/bin:/usr/loca/sbin:$PATH ; export PATH

# prompt setting
# set prompt='%m %'
# set prompt = "%m:%s %~> "
PS1="\[\e[33;1m\]\u@\[\e[33;1m\]\h \[\e[36;1m\]\W> \[\e[0m\]"

# title and tab title
PROMPT_COMMAND='echo -ne "\033];${HOSTNAME}\007"'

# Terminal color setting
#setenv TERM xterm-color
#set CLICOLOR="YES"; setenv CLICOLOR
#set LSCOLORS="cxdxfxdxcxdxdxhbadexex"; setenv LSCOLORS

# ATOMDB model data setting
#export ATOMDB="$HOME/atomdb/atomdb"

# alias
alias ls='ls -G'
alias la='ls -altrh'
alias okular='open -a okular'
#alias rigel="ssh -X yoon@rigel.astro.wisc.edu"
alias uwast="ssh -X yoon@uwast.astro.wisc.edu"
alias cetus="ssh -X yoon@cetus.astro.wisc.edu"
alias hydra="ssh -X yoon@hydra.astro.wisc.edu"
alias stampede="ssh -X astrodoo@stampede.tacc.utexas.edu"
alias stam="ssh -X yoon@stampede.astro.wisc.edu"
alias aci1="ssh -X dyoon5@aci-service-1.chtc.wisc.edu"
alias aci2="ssh -X dyoon5@aci-service-2.chtc.wisc.edu"

alias api="ssh -x astrodoo@146.50.53.118"
alias bluewater="ssh yoon2@bw.ncsa.illinois.edu"
alias summithome="ssh astrodoo@home.ccs.ornl.gov"
alias summit="ssh astrodoo@summit.olcf.ornl.gov"
alias rhea="ssh astrodoo@rhea.ccs.ornl.gov"

alias vi='mvim -v'
#alias gfortran='gfortran-mp-8'

# for Tex
#PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:/Users/astrodoo/:$PATH ; export PATH
#TEXINPUTS=.:/Users/astrodoo/astronat//:$TEXINPUTS ; export TEXINPUTS
#BSTINPUTS=.:/Users/astrodoo/astronat//:$BSTINPUTS ; export BSTINPUTS
#BIBINPUTS=.:/Users/astrodoo/astronat//:$BIBINPUTS ; export BIBINPUTS

# For MacPorts
# MacPorts Installer addition on 2013-09-09_at_19:06:53: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
#export MANPATH=/opt/local/share/man:$MANPATH

# set command like vi-editing mode
set -o vi

export PYTHONPATH="$PYTHONPATH:$HOME/lib/py_lib"
export PYTHONSTARTUP="$HOME/lib/py_lib/startup.py"
export PYTHONDATA="$HOME/Work/Outcomes/pydata/"
export PYTHONFIG="$HOME/Work/Outcomes/figures/"

export Today="$(date '+%y%m%d')"

##
# Your previous /Users/astrodoo/.bash_profile file was backed up as /Users/astrodoo/.bash_profile.macports-saved_2014-12-11_at_14:16:17
##

# MacPorts Installer addition on 2014-12-11_at_14:16:17: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# added by Anaconda2 4.2.0 installer
#export PATH="/Users/astrodoo/anaconda/bin:$PATH"

# MacPorts Installer addition on 2017-01-25_at_22:01:59: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# for gfortran "as" setup 
#export PATH="/usr/bin:$PATH"

# For using hdf5
export PATH="/usr/local/hdf5-1.10.4/bin:$PATH"

# activate the c++ suite for jupyter notebook (Xeus-Cling)
# https://github.com/QuantStack/xeus-cling
#alias jupyterc++="source activate cling"

# c++ using std for c++11
alias icc="icc -std=c++11"
alias gcc="gcc -std=c++11"

# Mac users may need to set the environment variable
# "HDF5_USE_FILE_LOCKING" to the five-character string
# "FALSE" when accessing network mounted files.  
# This is an application run-time setting, not a configure or
# build setting.  Otherwise errors such as "unable to open file" 
# or "HDF5 error" may be  encountered.
export HDF5_USE_FILE_LOCKING="FALSE"

# turn off special handling of ._* files in tar, etc.
COPYFILE_DISABLE=1; export COPYFILE_DISABLE
# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<


# for ATA summer school in Amsterdam 2019 July
alias ataschool="ssh ataschool@145.100.57.234"   # passwd: ataschool
alias cartesius="ssh ccurs068@cartesius.surfsara.nl"
