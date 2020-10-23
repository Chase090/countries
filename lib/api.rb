class API
    def self.fetch_countries
        url = "http://api.worldbank.org/v2/country?format=json"
        
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_countries = hash[1]
       

    # "name" = country name
    # "capitalCity" = capital city
    # cou"region"{value} = region
    # "incomelevel"{value} = income level
    #  :country_name, :capital_city, :region, :income_level
        array_of_countries.each do |country_list| 
           
            country = Country.new
            country.country_name = country_list["name"]
            country.capital_city = country_list["capitalCity"]
            country.region = country_list["region"]["value"]
            country.income_level = country_list["incomeLevel"]["value"]
        end
 binding.pry
    end

end