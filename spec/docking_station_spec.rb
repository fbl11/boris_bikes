require 'docking_station'

describe DockingStation do

	# it 'responds to release_bike' do
	# 	expect(subject).to respond_to(:release_bike)
	# end
	it { is_expected.to respond_to(:release_bike) }
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
		  expect { subject.release_bike } .to raise_error("No bikes available")
	    end

	end

	describe '#dock_bike' do

		it { is_expected.to respond_to(:dock_bike) }
		it { is_expected.to respond_to(:dock_bike).with(1).argument }
    	it { is_expected.to respond_to(:bike) }
    	it 'adds bike to docking station' do
		  bike = Bike.new
		  subject.dock_bike(bike)
		  expect(subject.bike).to eq bike
    end
        it 'raises an error when full and user tries to dock_bike' do
        	bike = Bike.new
        	subject.dock_bike(bike)
        	expect { subject.dock_bike(bike) } .to raise_error("Docking station full")
        end
	end

end