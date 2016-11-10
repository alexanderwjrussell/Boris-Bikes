require './lib/docking_station'

class Van
  attr_accessor :van_bikes

  def initialize
    @van_bikes = []
  end

  def collect_broken(broken_bikes)
      @van_bikes = broken_bikes.pop
  end

end
