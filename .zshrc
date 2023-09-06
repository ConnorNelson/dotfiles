export PATH="$HOME/.local/bin:$PATH"

export EDITOR=emacs
export COLORTERM=truecolor

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

# export MPLBACKEND="module://itermplot"
# export ITERMPLOT=rv

export PYTHONBREAKPOINT=ipdb.set_trace
export VIRTUAL_ENV_DISABLE_PROMPT=true
# export PIP_REQUIRE_VIRTUALENV=true
# if (tty -s); then
#     test -e "~/.virtualenvs/+/bin/activate" && source "~/.virtualenvs/+/bin/activate"
# fi

case "$OSTYPE" in
    linux*)
        fpath+=($HOME/.zsh/pure)
        ;;

    darwin*)
        test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
        fpath+=("$(brew --prefix)/share/zsh/site-functions")
        ;;
esac

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias tcc="tmux -CC new -As0"

autoload -U promptinit; promptinit
prompt pure

source /Users/connor/.docker/init-zsh.sh || true # Added by Docker Desktop
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
