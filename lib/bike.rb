class Bike
	attr_reader :is_broken

	def initialize
		@is_broken = false
	end
	def working?
		!@is_broken
	end

	def report_broken
    	@is_broken = true
	end
end