class Pokemon

  def call
    puts "Here is a list of some popular Pokemon:"
    list
    more?
    bye
  end

  def list
    @poke_list = Scraper.poke
    @poke_list.each.with_index do |poke, i|
      puts "#{i + 1}. #{poke.name}"
    end
    # puts "1. #{@poke_list[0].name}"
    # puts "2. #{@poke_list[1].name}"
    # puts "3. #{@poke_list[2].name}"
  end

  def more?
    input = nil
    while input != "exit"
      puts "Please choose which pokemon you would like to know more about. When done, please enter 'exit'"
      input = gets.strip
      if input.to_i > 0
        puts "#{@poke_list[input.to_i - 1].name} - #{@poke_list[input.to_i - 1].type} - #{@poke_list[input.to_i - 1].evolve}"
      #   puts "1. Pikachu - Electric Type - Can Evolve into Raichu"
      # elsif input == "2"
      #   puts "2. Bulbasaur - Grass Type - Can Evolve into Ivysaur"
      # elsif input == "3"
      #   puts "3. Geodude - Rock Type - Can Evolve into Graveler"
      elsif input != "exit" 
        puts "Invalid input, please try again."
      end
    end
  end

  def bye
    puts "Goodbye, please come again!"
  end

end
