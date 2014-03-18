
class TM::Project
  attr_accessor :name
  def initialize(name)
    @name=name
    @@id=(0...8).map{(65+rand(26)).chr}.join
    @completed_tasks=[]
  end

  def self.id
    @@id
  end

  def completed_tasks (t)
    t = TM::Task.new(@description, @priority_num, @project_id)
    if t.task_complete[1]=="yes"
      @completed_tasks<<t

    end

      #@completed_tasks.sort{|x| x[2]}
   # end


end




end
