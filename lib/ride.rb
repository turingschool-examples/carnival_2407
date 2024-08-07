class Ride
    attr_reader :name,
                :min_height,
                :admission_fee,
                :excitement

    def initialize(attributes)
        @name = ride1[:name]
        @min_height = ride1[:min_height] 
        @admission_fee = ride1[:admission_fee]
        @excitement = ride1[:excitement]
    end
end