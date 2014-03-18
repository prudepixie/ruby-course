
class TM::Task
  #=module TM (in task-manager.rb)
    #class Task end end
    attr_accessor :description, :project_id, :task_complete

    def initialize(description, priority_num=0, project_id)
    @description=description
    @priority_num=priority_num
    @project_id=project_id
    @task_complete=[@project_id,"no"]
  end

    def complete
      @task_complete[1]="yes"
      @task_complete
    end
end
