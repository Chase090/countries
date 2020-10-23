class CLI


    def start
       puts "Welcome"
       API.fetch_countries 
       self.list
    end

    def list
        # give the option to see the list of countries
        puts "Would you like to see the list of the coutries?"
        puts "type yes to continue or any key to exit"
    
        user_input = gets.strip.downcase

        # if yes
        if user_input == "yes" || user_input == "y"
            puts "Ok! Here!"
            display_countries
        end
    end

    def display_countries
        Country.all.each.with_index(1) do |country, index|
            puts "#{index}. #{country.country_name}"
        end
    end
end