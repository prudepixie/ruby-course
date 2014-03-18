
class TM::Project
  attr_accessor :name
  def initialize(name)
    @name=name
    @@id=(0...8).map{(65+rand(26)).chr}.join
  end

  def self.id
    @@id
  end

end
