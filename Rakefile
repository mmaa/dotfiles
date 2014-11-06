task default: %i(fish git vim tmux gem pry)

task :fish do
  unless Dir.exists?(ENV['HOME'] + '/.config')
    run 'mkdir ~/.config'
  end

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

task :vim do
  unless Dir.exists?(ENV['HOME'] + '/.vim')
    run 'ln -s ~/dotfiles/vim ~/.vim'
  end

  unless Dir.exists?('vim/bundle')
    run 'mkdir vim/bundle'
  end

  unless Dir.exists?('vim/bundle/Vundle.vim/.git')
    run 'git clone git@github.com:gmarik/Vundle.vim.git vim/bundle/Vundle.vim'
  end

  run 'vim +PluginInstall! +qall'
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
