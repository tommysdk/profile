PROMPT='%{$fg[magenta]%}$(date +%H:%M) %{$fg[white]%}%n%{$reset_color%}%{$fg[yellow]%}${(%):-%~}%{$reset_color%}$(git_prompt_info) %{$fg[green]%(!.#.$) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
