class Passenger

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def name
        @name
    end

    def add_flight(str)
        if !has_flight?(str)
            @flight_numbers << (str.upcase)
        end
    end

    def has_flight?(str)
        @flight_numbers.each do |ele|
            if ele.downcase == str.downcase
                return true
            end
        end
        false
    end

end