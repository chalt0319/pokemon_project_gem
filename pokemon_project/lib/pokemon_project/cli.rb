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
  end

  def more?
    input = nil
    while input != "exit"
      puts "Please choose which pokemon you would like to know more about. When done, please enter 'exit'"
      input = gets.strip
      if input.to_i > 0
        puts "#{@poke_list[input.to_i - 1].name} - #{@poke_list[input.to_i - 1].type} Type - #{@poke_list[input.to_i - 1].physiology}"
      elsif input != "exit"
        puts "Invalid input, please try again."
      end
    end
  end

  def bye
    puts "Goodbye, please come again!"
  end

end
