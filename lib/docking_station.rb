 require_relative './bike'

class DockingStation
	attr_reader :bike

	def dock_bike(bike)
		@bike = bike
	end
	def release_bike
		Bike.new
	end
	def bike
       @bike
	end
end
