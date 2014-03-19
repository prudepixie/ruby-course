
class TM::Project
  @@id=-1
  @@list=[]
  @@list2=[]
  attr_accessor :name, :task_complete, :list, :list2
  def initialize (name)
    @name=name
    @id=@@id+=1

  end

  def id
    @@id
  end

  def self.completed_task_list(task)
    if task.task_complete==true
        @@list<<task
    end
      @@list.sort_by{|x| x.created_date}
    end

  def self.complete_task_list
    @@list
  end

  def self.incompleted_task_list(task)
    if task.task_complete==false
        @@list2<<task
      end
        @@list2.sort_by{|x| x.priority_num}
    end

  def self.incomplete_task_list
    @@list2
  end

end
