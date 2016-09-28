# require_relative 'bike'

class DockingStation

  def initialize
    @bike_array = Array.new

  end

  #attr_reader :bike #Use method #bike to check bike docked at station

  def bike
    @bike_array.last #shows all bikes at the station
  end

  def release_bike
    fail 'No bikes available' unless !@bike_array.empty?
    @bike_array.pop
  end

   def dock(bike)
     # We need to return the bike we dock
     fail 'Docking station at capacity' if @bike_array.length >= 20
     @bike_array.push(bike)
  end
end
