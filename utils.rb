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
        sources = YAML.load_file('sources.yml')

        if Dir.exists?("#{path}/#{package}")
            puts "ERROR: Ya tienes #{package} en tu directorio de JPM"
        else
            if sources.include? package
                puts "Descargando..."
                Git.clone(sources[package], package, :path => path)
                puts "Terminado."
            else
                puts "No se ha encontrado #{package}. Puedes añadirlo con jpm add <paquete>"
            end
        end
    end

    def list
        sources = YAML.load_file('sources.yml')
        sources = sources.sort
        puts "Paquetes disponibles:"
        puts ""
        sources.each do |s|
            puts "* " + s[0]
        end
    end
end