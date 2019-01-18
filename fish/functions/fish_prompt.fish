function fish_prompt
  set -l last_status $status

  # time
  # set_color --bold magenta
  # echo -n (date "+%H:%M")

  # echo -n " "

  # host
  set_color --bold magenta
  echo -n (hostname | cut -d . -f 1)
  set_color normal

  echo -n " "

  # PWD
  set_color normal
  echo -n (prompt_pwd)
  set_color normal

  echo -n " "

  # exit status
  if not test $last_status -eq 0
    set_color $fish_color_error
    echo -n "$last_status"
    set_color normal

    echo -n " "
  end

  set_color --bold blue
  echo -n "❯"
  set_color normal

  echo -n " "
end
