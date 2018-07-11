class Pokemon

  def call
    puts "Here is a list of some popular Pokemon:"
    list
    more?
  end

  def list
   puts "1. Pikachu"
   puts "2. Bulbasaur"
   puts "3. Geodude"
  end

  def more?
    input = nil
    while input != "exit"
      puts "Please choose which pokemon you would like to know more about. When done, please enter 'exit'"
      input = gets.strip
      if input == "1"
        puts "1. Pikachu - Electric Type - Can Evolve into Raichu"
      elsif input == "2"
        puts "2. Bulbasaur - Grass Type - Can Evolve into Ivysaur"
      elsif input == "3"
        puts "3. Geodude - Rock Type - Can Evolve into Graveler"
      else
        puts "Invalid input, please try again."
      end
    end
  end
end
