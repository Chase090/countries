class API
    def self.fetch_countries
        url = "http://api.worldbank.org/v2/country?format=json"
        
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_countries = hash[1]
       


        array_of_countries.each do |country_list| 
           
            country = Country.new
            country.country_name = country_list["name"]
            country.capital_city = country_list["capitalCity"]
            country.region = country_list["region"]["value"]
            country.income_level = country_list["incomeLevel"]["value"]
        end

    end

end