
class TM::Project
  @@id=-1
  attr_accessor :name
  def initialize (name)
    @name=name
    @id=@@id+=1
  end


  def id
    @@id
  end


end
