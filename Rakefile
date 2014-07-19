task default: [:vim]

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

def run(command)
  puts "\033[34;47m\033[1m #{command} \033[0m"
  system command
end
