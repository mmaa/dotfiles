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
  set directory "$HOME/Downloads/"

  if count $argv > /dev/null
    screen -dm youtube-dl -f mp4 -o "$directory/%(title)s.%(extractor)s.%(id)s.%(ext)s" $argv
  end

  open -g $directory
end

function ff
  set directory "$HOME/Downloads/"
  set filetype ".mp4"

  if count $argv > /dev/null
    if [ (count $argv) -gt 1 ]
      set filename $argv[2]
    else
      set filename 'output'
    end

    ffmpeg -i $argv[1] -acodec copy -vcodec copy  -y -loglevel info -absf aac_adtstoasc -f mp4 $directory$filename$filetype
  end

  open $directory
end

function minecraft
  screen -dm java -d64 -Xms4G -Xmx4G -jar /Applications/Minecraft.app/Contents/Resources/Java/Bootstrap.jar
end

function bu
  if count $argv > /dev/null
    brew upgrade $argv; and brew cleanup --force
  else
    brew update; and brew outdated
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
    bundle exec foreman start -f Procfile.local
  else if test -e Procfile.dev
    bundle exec foreman start -f Procfile.dev
  else
    bundle exec rails server
  end
end

abbr -a gb git branch
abbr -a gc git checkout

function tml; tmux list-sessions                                ; end
function rc;  bundle exec rails console                         ; end
function rr;  bundle exec rails runner $argv                    ; end
function rg;  bundle exec rails generate $argv                  ; end
function buo; bu (brew outdated)                                ; end
function gd;  git diff head $argv                               ; end
function gdi; git diff head --ignore-space-change $argv         ; end
function gdc; git diff head --color --ignore-space-change $argv | diff-so-fancy         ; end
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
set -g -x FZF_DEFAULT_COMMAND 'ag -g ""'

set -g -x PATH /usr/local/bin $PATH
set PATH ./bin ~/bin $PATH

source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish
chruby ruby-2.2.3
