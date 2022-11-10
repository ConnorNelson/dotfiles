export EDITOR=emacs
export COLORTERM=truecolor

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

export MPLBACKEND="module://itermplot"
export ITERMPLOT=rv

export VIRTUAL_ENV_DISABLE_PROMPT=true
export PIP_REQUIRE_VIRTUALENV=true
if (tty -s); then
    test -e "~/.virtualenvs/+/bin/activate" && source "~/.virtualenvs/+/bin/activate"
fi

case "$OSTYPE" in
    linux*)
        fpath+=($HOME/.zsh/pure)
        ;;

    darwin*)
        test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
        fpath+=("$(brew --prefix)/share/zsh/site-functions")
        ;;
esac

autoload -U promptinit; promptinit
prompt pure
