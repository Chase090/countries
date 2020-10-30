class CLI


    def start
       puts "Welcome to Earth! or atleast the countries of it...."
       puts "
       o               .        ___---___                    .                   
       .              .--\        --.     .     .         .
                    ./.;_.\     __/~ \.     
                   /;  / `-'  __\    . \                            
 .        .       / ,--'     / .   .;   \        |
                 | .|       /       __   |      -O-       .
                |__/    __ |  . ;   \ | . |      |
                |      /  \\_    . ;| \___|    
   .    o       |      \  .~\\___,--'     |           .
                 |     | . ; ~~~~\_    __|
    |             \    \   .  .  ; \  /_/   .
   -O-        .    \   /         . |  ~/                  .
    |    .          ~\ \   .      /  /~          o
  .                   ~--___ ; ___--~       
                 .          ---         .              ".colorize(:green)
       API.fetch_countries 
       self.list
    end

    def list
  
        puts "Would you like to see the list of the coutries?".colorize(:blue)
        puts "type".colorize(:blue) + " 'yes'".colorize(:light_green) + "or".colorize(:blue) + " 'y'".colorize(:light_green) + "to continue or".colorize(:blue) + " 'anykey'".upcase.colorize(:red) + "to exit".colorize(:blue)
    
        user_input = gets.strip.downcase

        
        if user_input == "yes" || user_input == "y"
            puts "Ok! Here!"
            display_countries
            user_coutry_choice

            

            sleep(2)
            puts "\n"

            list
        else
            puts "\n"
            puts "Ok then, See ya!".upcase
        end
    end

    def display_countries
        Country.all.each.with_index(1) do |country, index|
            puts "#{index}." + "#{country.country_name}".colorize(:blue)
        end
    end

    def user_coutry_choice
        puts "Type the" + " number ".upcase.colorize(:red) + "of the country to see more information "
        index = gets.strip.to_i - 1
        until index.between?(0, Country.all.length)
            puts "Sorry invalid entry, Try again"
            index = gets.strip.to_i - 1
        end
        country_instance = Country.all[index]
        display_countries_details(country_instance)
      
    end

    

    def display_countries_details(country)
        sleep(1) # PAUSES THE CODE
        puts "\n"
        puts country.country_name
        puts "Capital City: ".colorize(:violet) + country.capital_city.upcase.colorize(:red)
        puts "World Region: ".colorize(:violet) + country.region.upcase.colorize(:red)
        puts "Income Level: ".colorize(:violet) + country.income_level.upcase.colorize(:red)


    end


end