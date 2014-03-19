
class TM::Project
  @@id=-1
  attr_accessor :name, :task_complete, :list, :list2
  def initialize (name)
    @name=name
    @id=@@id+=1
    @list=[]
    @list2=[]
  end

  def id
    @@id
  end

  def completed_task_list(task)
    if task.task_complete=true
        @list<<task
    end
      @list.sort_by{|x| x.created_date}
    end

  def incomplete_task_list(task)

    end
end
