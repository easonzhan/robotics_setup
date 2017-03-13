#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Andrew Hundt <ATHundt@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# ROS.org Robot Operating System
# version: kinetic
if [ -d /opt/ros/kinetic ]; then
  source /opt/ros/kinetic/setup.zsh
fi

# ROS.org Robot Operating System
# version: indigo
if [ -d /opt/ros/indigo ]; then
  source /opt/ros/indigo/setup.zsh
fi

# costar_ws github.com/cpaxton/costar_stack
if [ -d ~/src/costar_ws ]; then
  source ~/src/costar_ws/devel/setup.zsh
fi

# linuxbrew.sh
if [ -d $HOME/.linuxbrew ]; then
  export PATH="$PATH:$HOME/.linuxbrew/bin"
fi

# nvidia cuda gpu compiler
if [ -d /usr/local/cuda ]; then
  export PATH=$PATH:/usr/local/cuda/bin
fi

# golang aka google go
# https://golang.org/
# https://github.com/golang/go/wiki/Ubuntu
if [ -d $HOME/go ]; then
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
fi

if [ -d ~/src/gps ]; then
  # load libraries for guided_policy_search.sh
  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/src/gps/build/lib
  export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$HOME/src/gps/build/lib
  export PYTHONPATH=$PYTHONPATH:$HOME/src/gps/build/lib
fi


if [ -d ~/lib ]; then
  # load libraries for guided_policy_search.sh
  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/lib
  export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$HOME/lib
  export PYTHONPATH=$PYTHONPATH:$HOME/lib
fi

# autoenv for automatic environment variable loading
# on a per project basis (overrides cd)
#
if [ -d ~/.autoenv ]; then
  source ~/.autoenv/activate.sh
fi


# Check if we are running on a SLURM supercomputer cluster
if [ -x "$(command -v module)" ]; then
  # based on http://stackoverflow.com/a/26759734/99379
  source ~/src/robotics_setup/marcc-config.sh
fi


if [ -d ~/src/hub ]; then
  # shell completions for https://github.com/hub
  # https://github.com/github/hub/tree/master/etc
  eval "$(hub alias -s)"
  fpath=(~/.zsh/completions $fpath)
  autoload -U compinit && compinit
fi