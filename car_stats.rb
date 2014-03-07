class CarStats
  def initialize()
  end
  def self.calc_top_color(cars)
    top_cars=cars.map{|x| x.color}
    top_cars.inject(Hash.new(0)){|hash,k| hash[k]+=1; hash}.max_by { |a, b| b}.first
  end

  def self.calc_bottom_color(cars)
    low_cars=cars.map{|x| x.color}
    low_cars.inject(Hash.new(0)){|hash,k| hash[k]+=1; hash}.min_by {|a,b| b}.first
  end
end


