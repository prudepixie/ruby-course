
class TM::Task

  attr_accessor :description, :project_id, :task_complete, :created_time, :complete_time

    def initialize(description, priority_num=0, project_id)
    @description=description
    @priority_num=priority_num
    @project_id=project_id

  end
end
