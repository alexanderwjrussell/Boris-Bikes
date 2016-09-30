require './lib/bike'
require './lib/van'

class DockingStation

  # attr_reader :bike #Use method #bike to check bike docked at station
  DEFAULT_CAPACITY = 20
  attr_reader :capacity
  attr_accessor :van_bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    @broken_bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    fail 'This bike is broken' if @bikes.last.broken?
    @bikes.pop
  end

 def dock(bike)
   # We need to return the bike we dock
   fail 'Docking station at capacity' if full?
   @bikes << bike
  end

  def release_broken_bikes
    n = 0
    @bikes.each do |bike|
      if bike.broken?
        @broken_bikes << @bikes[n]
        @bikes.delete_at(n)
      else
        n+=1
      end
      # bike.broken? ? @broken_bikes << @bikes.pop : nil
    end
  end

  private

  attr_reader :bikes

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
