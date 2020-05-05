set -g -x fish_greeting ""

function tm
  if count $argv > /dev/null
    set name $argv
  else
    set name (basename $PWD)
  end

  tmux new-session -A -s $name
end

function yt
  if count $argv > /dev/null
    screen -dm youtube-dl $argv
  end

  open -g "$HOME/Downloads/"
end

function ff
  set directory "$HOME/Downloads/"
  set filetype ".mp4"

  if count $argv > /dev/null
    if [ (count $argv) -gt 1 ]
      set filename $argv[2]
    else
      set filename (ruby -e 'require "uri"; print "#{URI.parse(ARGV[0]).host}.#{Time.now.to_i}"' $argv[1])
    end

    open $directory
    ffmpeg -i $argv[1] -acodec copy -vcodec copy -y -loglevel info -absf aac_adtstoasc -f mp4 $directory$filename$filetype
  end
end

abbr -a gb git branch
abbr -a gc git checkout
abbr -a gt git stash
abbr -a bx bundle exec
abbr -a rc rails console
abbr -a rr rails runner

function vi;    nvim $argv                                                 ; end
function tml;   tmux list-sessions                                         ; end
function gd;    git diff head $argv                                        ; end
function gdi;   git diff head --ignore-space-change $argv                  ; end
function gdt;   git difftool head $argv                                    ; end
function gg;    git add -A . && gs                                         ; end
function gm;    git commit $argv                                           ; end
function gwip;  gg && git commit -m "WIP"                                  ; end
function gpl;   git pull --prune                                           ; end
function gps;   git push $argv                                             ; end
function gpz;   gpl && gps                                                 ; end
function gs;    git status                                                 ; end
function l;     exa $argv                                                  ; end
function lt;    exa -T $argv                                               ; end
function ll;    exa -l -a $argv                                            ; end

set -g -x EDITOR 'nvim'
set -g -x ERL_AFLAGS '-kernel shell_history enabled'
set -g -x FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git'

# homebrew
set -g fish_user_paths /usr/local/bin /usr/local/sbin $fish_user_paths

# asdf
source /usr/local/opt/asdf/asdf.fish

# local
set -g fish_user_paths ./bin ~/bin $fish_user_paths
