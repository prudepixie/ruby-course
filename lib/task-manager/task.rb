
class TM::Task

  attr_accessor :description, :project_id, :task_complete, :created_date

    def initialize(description, priority_num=0, project_id)
    @description=description
    @priority_num=priority_num
    @project_id=project_id
    @task_complete=false
    @created_date=Time.now
  end

  def complete_task
    @task_complete=true
  end

end
