
class TM::Project
  @@id=0
  attr_accessor :name
  def initialize (name)
    @name=name
    @id=@@id+=1
  end


  def id
    @@id
  end


end
