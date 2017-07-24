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
    ffmpeg -i $argv[1] -acodec copy -vcodec copy  -y -loglevel info -absf aac_adtstoasc -f mp4 $directory$filename$filetype
  end
end

function buh
  set packages (head_packages)
  echo $packages
  brew reinstall --HEAD $packages
end

function head_packages
  find /usr/local/Cellar/ -maxdepth 2 -mindepth 2 | \
  egrep 'HEAD$' | \
  ruby -e 'gets(nil).split("\n").each { |line| puts line.split("/")[-2] }'
end

function rs
  if test -e Procfile.local
    foreman start -f Procfile.local
  else if test -e Procfile.dev
    foreman start -f Procfile.dev
  else
    rails server
  end
end

abbr -a gb git branch
abbr -a gc git checkout
abbr -a gt git stash
abbr -a bx bundle exec

function tml; tmux list-sessions                                ; end
function rc;  rails console                                     ; end
function rr;  rails runner $argv                                ; end
function buo; bu (brew outdated)                                ; end
function gd;  git diff head $argv                               ; end
function gdi; git diff head --ignore-space-change $argv         ; end
function gdt; git difftool head $argv                           ; end
function gg;  git add -A .; and gs                              ; end
function gm;  git commit                                        ; end
function gma; git commit --amend                                ; end
function gpl; git pull --prune                                  ; end
function gps; git push $argv                                    ; end
function gpz; gpl; and gps                                      ; end
function gs;  git status                                        ; end
function l;   ls -F -1 $argv                                    ; end
function la;  ls -F -1 -A $argv                                 ; end
function ll;  ls -F -A -o -h $argv                              ; end

set -g -x EDITOR 'nvim'
set -g -x PGDATA '/usr/local/var/postgres/'
set -g -x FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'

status --is-interactive; and source (rbenv init -|psub)

set PATH ~/.cargo/bin $PATH
set PATH ./bin ~/bin $PATH
