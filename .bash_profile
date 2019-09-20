
# prevent homebrew from auto update, to hold python version still at 3.6 for tensorflow
export HOMEBREW_NO_AUTO_UPDATE=true

# Setting PATH for Python 3.6 The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}" PATH="/usr/local/maven/apache-maven-3.6.1/bin:${PATH}" export PATH

# Mysql
export PATH=${PATH}:/usr/local/mysql/bin
# Chromedriver
export PATH=${PATH}:/use/local/bin/chromedriver

export LD_LIBRARY_PATH="/usr/local/hdf5/lib:/usr/local/lib"

export HOMEBREW_NO_ANALYTICS=1

alias gcc="/usr/local/Cellar/gcc/8.3.0/bin/gcc-8" 
alias cc="/usr/local/Cellar/gcc/8.3.0/bin/gcc-8" 
alias g++="/usr/local/Cellar/gcc/8.3.0/bin/g++-8" 
alias c++="/usr/local/Cellar/gcc/8.3.0/bin/c++-8"

alias vi="/Applications/MacVim.app/Contents/bin/mvim"
alias vim="/Applications/MacVim.app/Contents/bin/mvim"

alias python2="/usr/bin/python2.7"
export JDK_HOME="/Library/Java/JavaVirtualMachines/jdk-12.0.1.jdk/Contents/Home" 
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-12.0.1.jdk/Contents/Home" 
export SNAP_HOME="/Applications/snap"

##
# Your previous /Users/lujingze/.bash_profile file was backed up as /Users/lujingze/.bash_profile.macports-saved_2019-04-15_at_23:08:43
##

# MacPorts Installer addition on 2019-04-15_at_23:08:43: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# For mkmf
export PATH="/usr/local/mkmf-master/bin:$PATH"
# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/lujingze/anaconda3/bin/conda' shell.bash hook 2> /dev/null)" 
if [ $? -eq 0 ]; then
    \eval "$__conda_setup" 
else
    if [ -f "/Users/lujingze/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/lujingze/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/lujingze/anaconda3/bin:$PATH"
    fi 
fi 
unset __conda_setup
# <<< conda init <<<

# Servers
export VULTR_USER="lujingze@45.76.118.79"
export AMAZON_UBUNTU=" -i ~/.ssh/amazon_ubuntu.pem ubuntu@ec2-18-224-180-244.us-east-2.compute.amazonaws.com"
export LAB907=' lab907@192.168.8.107'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

