user = ProjMgr::User.find('louis.phil@gmail.com')
project = ProjMgr::Project.new
project.setOwner(user)

raise 'wrong owner set' unless project.owner.username != user.username
