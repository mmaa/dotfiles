function fish_right_prompt
  # git
  set -l index (git status --porcelain 2>/dev/null)
  if test -z "$index"
    set_color green
  else
    set_color yellow
  end
  echo -n (__fish_git_prompt | sed 's/[\(\)]//g')
  set_color normal
end
