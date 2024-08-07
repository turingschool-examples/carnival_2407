require './lib/visitor'
require './lib/ride'

RSpec.describe Ride do
    before :all do

    end

    it 'exists' do
        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
        ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
        ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })

        expect(ride1).to be_an_instance_of Ride
        expect(ride2).to be_an_instance_of Ride
        expect(ride3).to be_an_instance_of Ride
    end

    it 'has a name' do
        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
        ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
        ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })

        expect(ride1.name).to eq('Carousel')
        expect(ride2.name).to eq('Ferris Wheel')
        expect(ride3.name).to eq('Roller Coaster')
    end

    it 'has a minimum height' do
        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
        ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
        ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })

        expect(ride1.min_height).to eq(24)
        expect(ride2.min_height).to eq(36)
        expect(ride3.min_height).to eq(54)
    end

    it 'has an admission fee' do
        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
        ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
        ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })

        expect(ride1.admission_fee).to eq(1)
        expect(ride2.admission_fee).to eq(5)
        expect(ride3.admission_fee).to eq(2)
    end

    it 'has an excitment level' do
        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
        ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
        ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })

        expect(ride1.excitement).to eq(:gentle)
        expect(ride2.excitement).to eq(:gentle)
        expect(ride3.excitement).to eq(:thrilling)
    end
end