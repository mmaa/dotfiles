task default: %i(config fish git neovim tmux gem pry)

task :config do
  unless Dir.exists?(ENV['HOME'] + '/.config')
    run 'mkdir ~/.config'
  end
end

task :fish do
  unless File.symlink?(ENV['HOME'] + '/.config/fish')
    run 'rm -rf ~/.config/fish'
    run 'ln -s ~/dotfiles/fish ~/.config/fish'
  end
end

task :git do
  unless File.exists?(ENV['HOME'] + '/.gitconfig')
    run 'ln -s ~/dotfiles/git/config ~/.gitconfig'
  end

  unless File.exists?(ENV['HOME'] + '/.gitignore')
    run 'ln -s ~/dotfiles/git/ignore ~/.gitignore'
  end
end

task :neovim do
  unless Dir.exists?(ENV['HOME'] + '/.config/nvim')
    run 'ln -s ~/dotfiles/nvim/ ~/.config/nvim'
  end
end

task :tmux do
  unless File.exists?(ENV['HOME'] + '/.tmux.conf')
    run 'ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf'
  end
end

task :gem do
  unless File.exists?(ENV['HOME'] + '/.gemrc')
    run 'ln -s ~/dotfiles/gem/gemrc ~/.gemrc'
  end
end

task :pry do
  unless File.exists?(ENV['HOME'] + '/.pryrc')
    run 'ln -s ~/dotfiles/pry/pryrc ~/.pryrc'
  end
end

def run(command)
  puts "\033[34;47m\033[1m #{command} \033[0m"
  system command
end
