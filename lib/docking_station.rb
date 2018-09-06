 require_relative './bike'

class DockingStation
	attr_reader :bikes

	def initialize
		@bikes = []
	end

	def dock_bike(bike)
		fail 'Docking station full' if @bikes.length == 20
		@bikes.push(bike)
	end

	def release_bike
		raise 'No bikes available' if @bikes.empty?
		@bikes.pop
	end
end
