class Station

def initialize 
	@passengers = []
end

def passenger_count
	@passengers.count
end

def touch_in(passenger)
	@passengers << passenger
end

def touch_out(passenger)
	@passengers.delete(passenger)
	end

end