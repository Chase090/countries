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
                 .          ---         .              "
       API.fetch_countries 
       self.list
    end

    def list

        puts "Would you like to see the list of the coutries?"
        puts "type yes to continue or any key to exit"
    
        user_input = gets.strip.downcase

        
        if user_input == "yes" || user_input == "y"
            puts "Ok! Here!"
            display_countries
            user_coutry_choice

            sleep(2)
            puts "\n"

            menu
        else
            puts "Ok then, See ya!"
        end
    end

    def display_countries
        Country.all.each.with_index(1) do |country, index|
            puts "#{index}. #{country.country_name}"
        end
    end

    def user_coutry_choice
        puts "enter the number of the country for more info "
        index = gets.strip.to_i - 1
        until index.between?(0, Country.all.length)
            puts "Sorry invalid entry"
            index = gets.strip.to_i - 1
        end
        country_instance = Country.all[index]
        display_countries_details(country_instance)
      
    end

    def display_countries_details(country)
        sleep(1) # PAUSES THE CODE
        puts "\n"
        puts country.country_name
        puts "Capital City: " + country.capital_city
        puts "World Region: " + country.region
        puts "Income Level: " + country.income_level 
    end


end