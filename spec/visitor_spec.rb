require './lib/visitor'

RSpec.describe Visitor do
    before :all do

    end
        it 'exists' do
            visitor1 = Visitor.new('Bruce', 54, '$10')
            visitor2 = Visitor.new('Tucker', 36, '$5')
            visitor3 = Visitor.new('Penny', 64, '$15')

            expect(visitor1).to be_a Visitor
            expect(visitor2).to be_a Visitor
            expect(visitor3).to be_a Visitor
        end

        it 'has a name' do
            visitor1 = Visitor.new('Bruce', 54, '$10')
            visitor2 = Visitor.new('Tucker', 36, '$5')
            visitor3 = Visitor.new('Penny', 64, '$15')

            expect(visitor1.name).to eq('Bruce')
            expect(visitor2.name).to eq('Tucker')
            expect(visitor3.name).to eq('Penny')
        end

        it 'has a height' do
            visitor1 = Visitor.new('Bruce', 54, '$10')
            visitor2 = Visitor.new('Tucker', 36, '$5')
            visitor3 = Visitor.new('Penny', 64, '$15')

            expect(visitor1.height).to eq(54)
            expect(visitor2.height).to eq(36)
            expect(visitor3.height).to eq(64)
        end

        it 'has spending money' do
            visitor1 = Visitor.new('Bruce', 54, '$10')
            visitor2 = Visitor.new('Tucker', 36, '$5')
            visitor3 = Visitor.new('Penny', 64, '$15')

            expect(visitor1.spending_money).to eq('$10')
            expect(visitor2.spending_money).to eq('$5')
            expect(visitor3.spending_money).to eq('$15')
        end

        it 'has preferences' do
            visitor1 = Visitor.new('Bruce', 54, '$10')
            preferences = Hash.new(0)

            expect(visitor1.preferences).to eq([])
        end

        it 'can add preferences' do
            visitor1 = visitor1.add_preference(:gentle)
            visitor1 = visitor1.add_preference(:thrilling)

            expect(visitor1.preferences).to eq([:gentle, :thrilling])
        end

        it 'can be tall enough' do
            visitor1 = Visitor.new('Bruce', 54, '$10')
            visitor2 = Visitor.new('Tucker', 36, '$5')
            visitor3 = Visitor.new('Penny', 64, '$15')

            expect(visitor1.tall_enough?(54)).to be true
            expect(visitor2.tall_enough?(54)).to be false
            expect(visitor3.tall_enough?(54)).to be true
            expect(visitor1.tall_enough?(64)).to be false
        end
end