require 'station'

describe Station do

	let(:station) { Station.new }
	let(:passenger) { double :passenger}
	
	it 'Should allow passengers to touch into the station' do
		expect{station.touch_in(passenger)}.to change{station.passenger_count}.by 1
	end

	it 'Should allow passengers to touch out of the station' do
		station.touch_in(passenger)
		expect{station.touch_out(passenger)}.to change{station.passenger_count}.by -1
	end



end