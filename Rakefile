task default: %w(config terminfo fish alacritty git neovim tmux gem pry mpv youtube-dl)

task "config" do
  unless Dir.exists?(ENV["HOME"] + "/.config")
    run "mkdir ~/.config"
  end
end

task "config" do
  unless Dir.exists?(ENV["HOME"] + "/.terminfo")
    run "ln -s ~/dotfiles/terminfo ~/.terminfo"
  end
end

task "fish" do
  unless File.symlink?(ENV["HOME"] + "/.config/fish")
    run "rm -rf ~/.config/fish"
    run "ln -s ~/dotfiles/fish ~/.config/fish"
  end
end

task "alacritty" do
  unless Dir.exists?(ENV["HOME"] + "/.config/alacritty")
    run "ln -s ~/dotfiles/alacritty/ ~/.config/alacritty"
  end
end

task "git" do
  unless File.exists?(ENV["HOME"] + "/.gitconfig")
    run "ln -s ~/dotfiles/git/config ~/.gitconfig"
  end

  unless File.exists?(ENV["HOME"] + "/.gitignore")
    run "ln -s ~/dotfiles/git/ignore ~/.gitignore"
  end
end

task "neovim" do
  unless Dir.exists?(ENV["HOME"] + "/.config/nvim")
    run "ln -s ~/dotfiles/nvim/ ~/.config/nvim"
  end
end

task "tmux" do
  unless File.exists?(ENV["HOME"] + "/.tmux.conf")
    run "ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf"
  end
end

task "gem" do
  unless File.exists?(ENV["HOME"] + "/.gemrc")
    run "ln -s ~/dotfiles/gem/gemrc ~/.gemrc"
  end
end

task "pry" do
  unless File.exists?(ENV["HOME"] + "/.pryrc")
    run "ln -s ~/dotfiles/pry/pryrc ~/.pryrc"
  end
end

task "mpv" do
  unless Dir.exists?(ENV["HOME"] + "/.config/mpv")
    run "ln -s ~/dotfiles/mpv/ ~/.config/mpv"
  end
end

task "youtube-dl" do
  unless Dir.exists?(ENV["HOME"] + "/.config/youtube-dl")
    run "ln -s ~/dotfiles/youtube-dl/ ~/.config/youtube-dl"
  end
end

def run(command)
  puts "\033[34;47m\033[1m #{command} \033[0m"
  system command
end
