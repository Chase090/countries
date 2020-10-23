class API
    def self.fetch_countries
        url = "http://api.worldbank.org/v2/country?format=json"
        
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_countries = hash[1]
        binding.pry
    end

    # "name" = country name
    # "capitalCity" = capital city
    # "region"{value} = region
    # "incomelevel"{value} = income level
    #  :country_name, :capital_city, :region, :income_level

end