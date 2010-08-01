require 'fileutils'

namespace :dotfiles do

  def link_files
    home_dir    = File.expand_path('~')
    current_dir = File.expand_path(File.dirname(__FILE__))
    ignore_list = %w(bash Rakefile README.md)

    Dir['*'].each do |file|
      next if ignore_list.include?(file)
      FileUtils.ln_sf File.join(current_dir, file), File.join(home_dir, ".#{file}")
    end
  end

  def source_files
    `source ~/.bashrc`
  end

  desc 'Install dotfiles to home directory'
  task :install do
    link_files
    source_files
    puts 'all done'
  end

  desc 'Update dotfiles'
  task :update do
    `git pull --rebase`
    source_files
  end

end

