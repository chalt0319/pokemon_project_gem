class Cli

  def call
    puts "Here is a list of some popular Pokemon:"
    Scraper.create_pokemon
    list
    more?
    bye
  end

  def list
    # @poke_list = Scraper.poke
    Pokemon.all.each.with_index do |pokemon, i|
      puts "#{i + 1}. #{pokemon.name}"
    end
  end

  def more?
    input = nil
    while input != "exit"
      puts "Please choose which pokemon you would like to know more about. When done, please enter 'exit'"
      input = gets.strip
      if input.to_i > 0 && input.to_i <= Pokemon.all.length
        puts "#{Pokemon.all[input.to_i - 1].name} - #{Pokemon.all[input.to_i - 1].type} Type - #{Pokemon.all[input.to_i - 1].physiology}"
      elsif input != "exit"
        puts "Invalid input, please try again."
      end
    end
  end

  def bye
    puts "Goodbye, please come again!"
  end

end
