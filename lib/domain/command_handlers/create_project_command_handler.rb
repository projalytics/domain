class CreateProjectCommandHandler
    def execute(owner)
        EventSource::EntityRepository.transaction do
            project = Project.create
            project.set_owner(owner.uid)
        end
    end
end
