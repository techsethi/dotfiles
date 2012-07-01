GIT_PROMPT_DIRTY=" ${bold_red}✘"
GIT_PROMPT_CLEAN=" ${bold_green}✔"

function git_prompt_vars {
  if [[ -n $(git status -s 2> /dev/null |grep -v ^# |grep -v "working directory clean") ]]; then
    GIT_STATE=$GIT_PROMPT_DIRTY
  else
    GIT_STATE=$GIT_PROMPT_CLEAN
  fi

  local ref=$(git symbolic-ref HEAD 2> /dev/null)
  GIT_BRANCH=${ref#refs/heads/}
  GIT_CHANGE=$(git rev-parse HEAD 2>/dev/null)
}

function rbenv_version_prompt {
  which rbenv > /dev/null && {
    rbenv=$(rbenv global) || return
    echo -e "$RBENV_THEME_PROMPT_PREFIX$rbenv$RBENV_THEME_PROMPT_SUFFIX"
  }
}

function git_prompt_info {
  if [[ -n "$(git symbolic-ref HEAD 2> /dev/null)" ]]; then
    git_prompt_vars
    echo -e " ($GIT_BRANCH)$GIT_STATE"
  fi
}

# \[\033[G\]: goto first col
PROMPT="\[\033[G\]\[${bold_yellow}\]\w\[${bold_blue}\]\[\$(git_prompt_info)\]\[${normal}\]\[${reset_color}\] → "
PS1=$PROMPT
