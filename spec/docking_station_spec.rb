require 'docking_station'

describe DockingStation do

	it { is_expected.to respond_to(:dock_bike) }
	it { is_expected.to respond_to(:dock_bike).with(1).argument }
	it { is_expected.to respond_to(:release_bike) }

	it "initialises a docking station with default capacity" do
		expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
 	end

	it 'releases working bike' do
		bike = Bike.new
		subject.dock_bike(bike)
		expect(subject.release_bike).to be_working
	end

	describe '#release_bike' do
		it 'releases existing bike' do
			bike = Bike.new
			subject.dock_bike(bike)
			expect(subject.release_bike).to eq(bike)
		end
		it 'raises an error when there are no bikes available' do
		  expect { subject.release_bike }.to raise_error("No bikes available")
	    end

	end

	describe '#dock_bike' do
    	it { is_expected.to respond_to(:bikes) }
    	it 'adds bike to docking station' do
		  bike = Bike.new
		  subject.dock_bike(bike)
		  expect(subject.bikes).to eq([bike])
    end
        it 'raises an error when full and user tries to dock_bike' do
        	(subject.capacity).times {subject.dock_bike(Bike.new)}
        	expect {subject.dock_bike(Bike.new)} .to raise_error("Docking station full")
        end
	end

end

	# it 'releases existing bike' do
	# 		bike = Bike.new
	# 		subject.dock_bike(bike)
	# 		rel_bike = subject.release_bike
	# 		expect(rel_bike).to eq(bike)
	# 	end

# example implementation of expect when called with a block
   # def expect(&block)
   # 	 begin
   # 	 	block.yield
   # 	 rescue Exception => ex
   #      ToMatch.new(ex)
   # 	 end
   # end