require 'fileutils'

namespace :dotfiles do
  task :install do
    puts 'Installing config files'
    install_rc_files
    puts "\tDone"

    puts 'Installing bash profile'
    install_bash_files
    puts "\tDone"
  end
end

task :default => 'dotfiles:install'

def install_bash_files
  source_path = File.expand_path('bash/bash_profile.sh', File.dirname(__FILE__))
  target_path = File.expand_path('~/.bash_profile')

  if nonsymlinked_file_exists?(target_path)
    move_to = File.expand_path("~/old_bash_profile-#{time_of_install}")
    FileUtils.mv(target_path, move_to)
    puts "* Found existing bash_profile. Moving it to: #{move_to}"
  end

  FileUtils.ln_sf(source_path, target_path)
end

def install_rc_files
  source_rc_files_directory = File.expand_path('rc/*', File.dirname(__FILE__))
  old_rc_files_directory    = File.expand_path("~/old_rc_files-#{time_of_install}")
  files_moved               = false

  Dir[source_rc_files_directory].each do |source_path|
    target_path = File.expand_path("~/.#{File.basename(source_path)}")

    if nonsymlinked_file_exists?(target_path)
      FileUtils.mkdir_p(old_rc_files_directory)
      FileUtils.mv(target_path, old_rc_files_directory)
      files_moved = true
    end

    FileUtils.ln_sf(source_path, target_path)
  end

  if files_moved
    puts "\t* You already had one or more rc files in place. They were moved to: #{old_rc_files_directory}"
  end
end

def nonsymlinked_file_exists?(file)
  File.exist?(file) && !File.symlink?(file)
end

def time_of_install
  @time_of_install ||= Time.now.strftime('%Y-%m-%d-%H%M%S')
end
