
class TM::Task
  #=module TM (in task-manager.rb)
    #class Task end end
    attr_accessor :description, :project_id

    def initialize(description, priority_num=0, project_id)
    @description=description
    @priority_num=priority_num
    @project_id=project_id
  end


end
