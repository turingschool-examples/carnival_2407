class Visitor
    attr_reader :name, :height, :spending_money

    def initialize(name, height, spending_money)
        @name = name
        @height = height
        @spending_money = spending_money
        @preferences = []
        # require 'pry'; binding.pry
    end

    def add_preference
        # look through the preferences array and if 
        # the preference isn't found, shovel it in

        @preferences.each do |preference|
            preferences << preference
        end
        add_preference
    end

    # def tall_enough?(visitor)

    # end
end