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
    puts "Please choose which pokemon you would like to know more about"
  end
end
