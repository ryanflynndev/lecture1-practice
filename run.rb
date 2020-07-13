require 'pry'

animals = [{type: "Dog", name: "Arthur"}, {type: "Snake", name: "Billy"}, {type: "Hamster", name: "Bolt"}, {type: "Snake", name: "Bob"}]

def run(animals_array)
    puts "Hey how are you? Please enter 1 if you want to see all the animal's names, 2 if you want to see all snakes, and 3 if you want to find a specific animal by name. "
    user_input = gets.chomp
    
    if user_input == "1"
        #Creating a list of all the animals
        animals_array.map do |element|
            element[:name]
        end
    elsif user_input == "2"
        animals_array.filter do |element|
            element[:type] == "Snake"
        end
    elsif user_input == "3"
        puts "Please enter a name:"
        input_name = gets.chomp
        animals_array.find do |element|
            element[:name] == input_name
        end
    end
end

binding.pry