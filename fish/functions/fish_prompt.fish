function fish_prompt --description 'Set prompt'
  set -l last_status $status

  set_color --bold blue
  echo -n "$USER "
  set_color --bold magenta
  echo -n "● "
  set_color normal

  # PWD
  set_color normal
  echo -n (prompt_pwd)
  set_color normal

  # git
  set -l index (git status --porcelain 2>/dev/null)
  if test -z "$index"
    set_color green
  else
    set_color yellow
  end
  echo -n (__fish_git_prompt | sed 's/[\(\)]//g')
  set_color normal

  # exit status
  if not test $last_status -eq 0
    set_color $fish_color_error
    echo -n " $last_status"
    set_color normal
  end

  set_color --bold blue
  echo -n ' ❯ '
  set_color normal
end
