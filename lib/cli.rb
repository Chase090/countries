class CLI


    def start
       puts "Welcome"
       API.fetch_countries 
    end
end