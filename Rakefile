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

  desc 'Install dotfiles to home directory'
  task :install do
    link_files
    puts <<-TEXT
      Dotfiles have been installed.
      To start using them, close this window and open a new one, or run:

      source ~/.bashrc
    TEXT
  end

end

