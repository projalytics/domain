class Project
    extend EventSource::Entity::ClassMethods
    include EventSource::Entity

    attr_accessor :name
    attr_accessor :owner_uid

    on_event :set_owner do |e, owner_uid|
        e.owner_uid = owner_uid
    end
end
