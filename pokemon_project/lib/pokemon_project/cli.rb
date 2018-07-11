class Pokemon

  def call
    puts "Here is a list of some popular Pokemon:"
    list
    more?
  end

  def list
    @poke_list = Scraper.poke
    puts "1. #{@poke_list[0].name}"
    puts "2. #{@poke_list[1].name}"
    puts "3. #{@poke_list[2].name}"
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
