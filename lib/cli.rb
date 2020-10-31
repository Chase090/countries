class CLI


    def start
       puts "Welcome to Earth! or atleast the countries of it...."
       puts "
       :::::::::::''  ''::'      '::::::  `:::::::::::::'.:::::::::::::::
       :::::::::' :. :  :         ::::::  :::::::::::.:::':::::::::::::::
       ::::::::::  :   :::.       :::::::::::::..::::'     :::: : :::::::
       ::::::::    :':  '::'     ''::::::::::::: :'           '' ':::::::
       :'        : '   :  ::    .::::::::'    '                        .:
       :               :  .:: .::. ::::'                              :::
       :. .,.        :::  ':::::::::::.: '                      .:...::::
       :::::::.      '     .::::::: '''                         :: :::::.
       ::::::::            ':::::::::  '',            '    '   .:::::::::
       ::::::::.        :::::::::::: '':,:   '    :         ''' :::::::::
       ::::::::::      ::::::::::::'                        :::::::::::::
       : .::::::::.   .:''::::::::    '         ::   :   '::.::::::::::::
       :::::::::::::::. '  '::::::.  '  '     :::::.:.:.:.:.:::::::::::::
       :::::::::::::::: :     ':::::::::   ' ,:::::::::: : :.:'::::::::::
       ::::::::::::::::: '     :::::::::   . :'::::::::::::::' ':::::::::
       ::::::::::::::::::''   :::::::::: :' : ,:::::::::::'      ':::::::
       :::::::::::::::::'   .::::::::::::  ::::::::::::::::       :::::::
       :::::::::::::::::. .::::::::::::::::::::::::::::::::::::.'::::::::
       :::::::::::::::::' :::::::::::::::::::::::::::::::::::::::::::::::
       ::::::::::::::::::.:::::::::::::::::::::::::::::::::::::::::::::::".colorize(:green)
       API.fetch_countries 
       list
       puts "\n"
    end

    def list
  
        puts "Wanna see the list of coutries?".colorize(:blue)
        puts "type".colorize(:blue) + " 'yes'".colorize(:light_green) + "or".colorize(:blue) + " 'y'".colorize(:light_green) + "to continue or".colorize(:blue) + " 'anykey'".upcase.colorize(:red) + "to exit".colorize(:blue)
    
        user_input = gets.strip.downcase

        
        if user_input == "yes" || user_input == "y"
            
            puts "good choice!".colorize(:red).upcase
            sleep(1)
                      
            display_countries
            user_coutry_choice

            puts "\n" 
            
        elsif user_input == "n" || user_input == "no" 
            sleep(0.50)
            
            puts "OOps! Wrong answer!"
            sleep(0.50)
            
            puts "\n"
            puts "Try again"
            
            list
        else 
            puts "\n"
            puts "
                ██████████████████████████████████████████████████
                █─▄▄▄▄██▀▄─██▄─█─▄█─▄▄─█▄─▀█▄─▄██▀▄─██▄─▄▄▀██▀▄─██
                █▄▄▄▄─██─▀─███▄─▄██─██─██─█▄▀─███─▀─███─▄─▄██─▀─██
                ▀▄▄▄▄▄▀▄▄▀▄▄▀▀▄▄▄▀▀▄▄▄▄▀▄▄▄▀▀▄▄▀▄▄▀▄▄▀▄▄▀▄▄▀▄▄▀▄▄▀".colorize(:red)
            
                       puts "\n"
                       puts "--- ありがとうございます"
            
            
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

        again
    
    
    
    end
    
    def again
        puts "Would you like to see another?".colorize(:blue) + " 'yes'".colorize(:green) + " or".colorize(:blue) + " 'y'".colorize(:green) + " to proceed and".colorize(:blue) + " 'n' ".colorize(:red) + " or ".colorize(:blue) + " 'no' ".colorize(:red) + "to leave this program.".colorize(:light_blue)
        user_input = gets.strip.downcase 
            
        if user_input == "yes" || user_input == "y" 
            display_countries
            puts "\n"
            puts "So, which one?".colorize(:red)
            user_coutry_choice
        
        elsif user_input == "n" || user_input == "no"
            
            puts " 
            ─██████████████─██████████─██████████████─██████████████─
            ─██░░░░░░░░░░██─██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─
            ─██░░██████████─████░░████─██░░██████░░██─██░░██████░░██─
            ─██░░██───────────██░░██───██░░██──██░░██─██░░██──██░░██─
            ─██░░██───────────██░░██───██░░██████░░██─██░░██──██░░██─
            ─██░░██───────────██░░██───██░░░░░░░░░░██─██░░██──██░░██─
            ─██░░██───────────██░░██───██░░██████░░██─██░░██──██░░██─
            ─██░░██───────────██░░██───██░░██──██░░██─██░░██──██░░██─
            ─██░░██████████─████░░████─██░░██──██░░██─██░░██████░░██─
            ─██░░░░░░░░░░██─██░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██─
            ─██████████████─██████████─██████──██████─██████████████─
            ───────────────────────────────────────────────────────── ".colorize(:red)  
    

            
            
            
            
            
            puts "\n"
            sleep(0.50)           
            puts "--- Grazie, ci vediamo"
            exit
          else
            sleep(0.25)
            puts "Yeah... nope!"

            sleep(0.25)
            puts "Try again!".colorize(:red)
            sleep(0.50)

            again
        end
    end


end