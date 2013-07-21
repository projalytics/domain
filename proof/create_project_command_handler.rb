require './lib/domain.rb'

EventSource::EventRepository.create(connect: {connection_string: 'sqlite://proof/test.db'})

class DummyOwner
    def uid
        123
    end
end

owner = DummyOwner.new
CreateProjectCommandHandler.new.execute(owner)
