require './lib/visitor'

RSpec.describe Visitor do
    before :all do
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

        end
    end
end