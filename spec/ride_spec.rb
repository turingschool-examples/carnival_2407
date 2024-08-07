require './lib/visitor'
require './lib/ride'

RSpec.describe Ride do
    before :all do

    end

    it 'exists' do
        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

        expect(ride1).to be_an_instance_of Ride
    end

    it 'has a name' do
        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

        expect(ride1.name).to eq('Carousel')
    end

    it 'has a minimum height' do
        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

        expect(ride1.min_height).to eq(24)
    end

    it 'has an admission fee' do
        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

        expect(ride1.admission_fee).to eq(1)
    end

    it 'has an excitment level' do
        ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })

        expect(ride1.excitement).to eq(:gentle)
    end
end