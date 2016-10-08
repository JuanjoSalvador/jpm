require 'rubygems'
require 'git'
require 'yaml'
require 'fileutils'

class Utils

    def init
        username = %x[ #{'whoami'} ]
        username = username.chomp

        jpm_dir = "/home/#{username}/JPM"
        if !Dir.exists?(jpm_dir)
            FileUtils::mkdir_p jpm_dir
        end
    end

    def download(package)
        username = %x[ #{'whoami'} ]
        username = username.chomp

        path = "/home/#{username}/JPM"
        sources = YAML.load_file('test.yml')

        if Dir.exists?("#{path}/#{package}")
            puts "ERROR: Ya tienes #{package} en tu directorio de JPM"
        else
            puts "Descargando..."
            Git.clone(sources[package], package, :path => path)
            puts "Terminado."
        end
    end 
end