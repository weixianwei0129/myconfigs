# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
alias pycharm="open -a PyCharm"
alias finder="open -a Finder"
alias pip="python3 -W ignore:DEPRECATION -m pip"
alias pip3="python3 -W ignore:DEPRECATION -m pip3"
alias labelme='labelme'

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="af-magic"
# ZSH_THEME="random"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git 
	cp 
	extract 
	safe-paste 
	colored-man-pages
	zsh-autosuggestions 
	zsh-syntax-highlighting 
	z
)

source $ZSH/oh-my-zsh.sh

# export PATH=/Users/weixianwei/miniforge3/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-18.0.1.1.jdk/Contents/Home

# <<< conda initialize <<<

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/weixianwei/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/weixianwei/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/weixianwei/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/weixianwei/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
conda activate mm

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"
# export PYTORCH_ENABLE_MPS_FALLBACK=1
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
