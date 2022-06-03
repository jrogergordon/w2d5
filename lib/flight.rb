require_relative "./passenger.rb"
require "byebug"
class Flight 

    def initialize(str, cap)
        @flight_number = str
        @capacity = cap
        @passengers = []
    end

    def passengers
        @passengers
    end

    def full?
        if @passengers.length == @capacity
            return true
        end
        false
    end

    def board_passenger(passenger)
        if !full?()
            if passenger.has_flight?(@flight_number)
                @passengers << passenger
            end
        end
    end

    def list_passengers
        new_arr = []
        @passengers.each do |ele|
            new_arr << ele.name
        end
        new_arr
    end

    def [](idx)
        @passengers[idx]
    end

    def <<(passenger)
        board_passenger(passenger)
    end

end