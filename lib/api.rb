class API
    def self.fetch_countries
        url = "http://api.worldbank.org/v2/country?format=json"
        
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_countries = hash[1]
       

    # "name" = country name
    # "capitalCity" = capital city
    # "region"{value} = region
    # "incomelevel"{value} = income level
    #  :country_name, :capital_city, :region, :income_level
        array_of_countries.each do |country_list| 
            binding.pry
            Country
            name = country_list["name"]
        end

    end

end