require 'bike'

class Van

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def load_bike(bike)
    bikes << bike
  end

  def unload_bike
    fail "error - no bikes available" if empty?
    bikes.pop
  end

def empty?
  bikes.count <= 0
end


end
