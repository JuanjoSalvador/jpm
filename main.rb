require './utils'
require './help'

utils = Utils.new
help  = Help.new

case ARGV[0]
    when "get"
        utils.init()
        utils.download(ARGV[1])
    
    when "list"
        utils.list()

    when "update"
        utils.update()

    when "help"
        help.info()

    else
        puts "Prueba con el comando help para obtener ayuda"
end