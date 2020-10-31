
class Country
    attr_accessor :country_name, :capital_city, :region, :income_level

    @@all = []

    def  initialize
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.find_by_city(capital_city)
    #     self.all.find{|capital| capital.capital_city == capital_city || capital.capital_city.downcase == capital_city}
    # end
    # def list_of_high_income_countries
    #     self.collect do ||
        
    # end
     

end