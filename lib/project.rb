class Project

    attr_reader :title, :project

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        backer = ProjectBacker.new(self, backer)
    end

    def backers
        projects = ProjectBacker.all.select {|projects| projects.project == self}
        projects.collect {|projects| projects.backer} 
      end

end