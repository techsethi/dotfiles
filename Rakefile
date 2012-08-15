require 'fileutils'

namespace :dotfiles do
  task :install do
    Dir['*.sh'].each do |filename|
      src   = File.expand_path(filename)
      dest  = File.expand_path("~/.#{File.basename(filename, '.*')}")

      FileUtils.mv(dest, dest + '-backup', :force => true) if File.exist?(dest)

      FileUtils.ln_sf(src, dest)
      FileUtils.ln_sf(File.expand_path('bin'), File.expand_path('~/bin'))
    end
  end
end
