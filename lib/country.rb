class Country
    attr_accessor :country_name, :capital_city, :region, :income_level

    @@all = []

    def  initialize
        @@all << self
    end

    def self.all
        @@all
    end


end