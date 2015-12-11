#
# gattebury ohh-my-zsh theme
#

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo ' '
}

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$reset_color%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{%f%k%b%}
%T %{$fg_bold[white]%}%n%{$fg_bold[magenta]%}@%{$fg_bold[white]%}%m %{$fg_bold[yellow]%}%d% $(git_prompt_info)%E%{%f%k%b%}
$(prompt_char) %#%{%f%k%b%} '

RPROMPT='!%{%B%}%!%{%f%k%b%}'

