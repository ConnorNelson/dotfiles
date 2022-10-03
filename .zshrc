export ZSH=~/.oh-my-zsh
ZSH_THEME="avit"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export EDITOR=emacs
export COLORTERM=truecolor

export VIRTUAL_ENV_DISABLE_PROMPT=true
export PIP_REQUIRE_VIRTUALENV=true
if (tty -s); then
    test -e "~/.virtualenvs/+/bin/activate" && source "~/.virtualenvs/+/bin/activate"
fi

export MPLBACKEND="module://itermplot"
export ITERMPLOT=rv

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# https://www.emacswiki.org/emacs/AnsiTermHints
if [ "$TERM" = "eterm-color" ]; then
    precmd() {
        echo -e "\033AnSiTu" "$LOGNAME" # $LOGNAME is more portable than using whoami.
        echo -e "\033AnSiTc" "$(pwd)"
        if [ $(uname) = "SunOS" ]; then
	    # The -f option does something else on SunOS and is not needed anyway.
       	    hostname_options="";
        else
            hostname_options="-f";
        fi
        echo -e "\033AnSiTh" "$(hostname $hostname_options)" # Using the -f option can
        # cause problems on some OSes.
    }
fi
