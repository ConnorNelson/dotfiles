export EDITOR=emacs
export COLORTERM=truecolor

export MPLBACKEND="module://itermplot"
export ITERMPLOT=rv

export VIRTUAL_ENV_DISABLE_PROMPT=true
export PIP_REQUIRE_VIRTUALENV=true
if (tty -s); then
    test -e "~/.virtualenvs/+/bin/activate" && source "~/.virtualenvs/+/bin/activate"
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure
