# Yay! High voltage and arrows!
# Based on pygmalion
# for more information see: https://github.com/robbyrussell/oh-my-zsh/wiki/themes
# works best with 256 colors

prompt_setup_worldpotato(){
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$FG[040]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[226]%}🗲 %{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN=""

  base_prompt='%{$FG[073]%}%n%{$reset_color%}%{$FG[185]%}@%{$reset_color%}%{$FG[073]%}%m%{$reset_color%}%{$FG[185]%}:%{$reset_color%}%{$FG[030]%}%0~%{$reset_color%}%{$FG[185]%}|%{$reset_color%}'
  post_prompt='%{$FG[196]%}➜ %{$reset_color%}'

  base_prompt_nocolor=$(echo "$base_prompt" | perl -pe "s/%\{[^}]+\}//g")
  post_prompt_nocolor=$(echo "$post_prompt" | perl -pe "s/%\{[^}]+\}//g")

  precmd_functions+=(prompt_worldpotato_precmd)
}

prompt_worldpotato_precmd(){
  local gitinfo=$(git_prompt_info)
  local gitinfo_nocolor=$(echo "$gitinfo" | perl -pe "s/%\{[^}]+\}//g")
  local exp_nocolor="$(print -P \"$base_prompt_nocolor$gitinfo_nocolor$post_prompt_nocolor\")"
  local prompt_length=${#exp_nocolor}

  local nl=""

  if [[ $prompt_length -gt 40 ]]; then
    nl=$'\n%{\r%}';
  fi
  PROMPT="$base_prompt$gitinfo$nl$post_prompt"
}

prompt_setup_worldpotato


