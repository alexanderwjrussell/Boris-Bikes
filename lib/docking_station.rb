# require_relative 'bike'

class DockingStation

  # attr_reader :bike #Use method #bike to check bike docked at station
  DEFAULT_CAPACITY = 20
  attr_reader :capacity

  def bike
    @bikes
  end

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

 def dock(bike)
   # We need to return the bike we dock
   fail 'Docking station at capacity' if full?
   @bikes << bike
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
