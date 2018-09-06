 require_relative './bike'

class DockingStation
	attr_reader :bikes, :capacity
	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@capacity = capacity
		@bikes = []
	end

	def dock_bike(bike)
		fail 'Docking station full' if full?
		@bikes.push(bike)
	end

	def release_bike
		raise 'No bikes available' if empty?
		@bikes.pop
	end

	private
	def full?
		@bikes.length >= @capacity
	end

	def empty?
		@bikes.empty?
	end
end
