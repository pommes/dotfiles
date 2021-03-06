# Colors
#autoload -U colors && colors

export EDITOR=vim

# Prompt
if [ `whoami` = "root" ]; then
  PS1='%B%{$fg[blue]%}%#%  %{$fg[red]%}%n@%{$fg[cyan]%}%m %{$fg[yellow]%}%~%{$fg[white]%}${vcs_info_msg_0_}
%{$fg[red]%}$ %{$reset_color%}'
else
  PS1='%B%{$fg[blue]%}%#%  %{$fg[green]%}%n@%{$fg[cyan]%}%m %{$fg[yellow]%}%~%{$fg[white]%}${vcs_info_msg_0_}
%{$fg[red]%}$ %{$reset_color%}'
fi

# enable color support of ls and also add handy aliases
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# Disable annoying auto correct
unsetopt correct_all

# Unset nomatch so zsh does not complain about wildcards that
# # do not match locally (for example in scp where they are on remote).
# # Another solution would be an alias
# # e.g.: alias scp='noglob scp'
unsetopt nomatch

