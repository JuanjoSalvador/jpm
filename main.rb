#!/usr/bin/env ruby

require './utils'

u = Utils.new

case ARGV[0]
    when "get"
        u.init
        u.download(ARGV[1])
    
    when "list"
        puts "List!"

    when "update"
        puts "Update!"

    else
        puts "¿Necesitas ayuda?"
end