# Modified by me to change colors and remove prompt indent & bold formatting, with help of Perplexity
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user='%{$fg[green]%}%n%{$reset_color%}'
local at='%{$fg[green]%}@%{$reset_color%}'
local host='%{$fg[green]%}%m%{$reset_color%}'

local current_dir='%{$fg[blue]%}%~%{$reset_color%}'
local rvm_ruby='%{$fg[red]%}$(ruby_prompt_info)%{$reset_color%}'
local git_branch='%{$fg[blue]%}$(git_prompt_info)%{$reset_color%}'

PROMPT="[${user}${at}${host}] ${current_dir} ${rvm_ruby}
${git_branch}$ "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%} "
