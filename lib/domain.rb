require 'event_source'

Dir["./lib/domain/command_handlers/*.rb"].each {|file| require file }
Dir["./lib/domain/models/*.rb"].each {|file| require file }
