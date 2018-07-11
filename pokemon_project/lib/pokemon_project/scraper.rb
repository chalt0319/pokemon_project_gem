class Scraper
  attr_accessor :name, :type, :evolve

  def self.poke

    poke_1 = self.new
    poke_1.name = "Pikachu"
    poke_1.type = "Electric"
    poke_1.evolve = "Can Evolve into Raichu"

    poke_2 = self.new
    poke_2.name = "Bulbasaur"
    poke_2.type = "Grass"
    poke_2.evolve = "Can Evolve into Ivysaur"

    poke_3 = self.new
    poke_3.name = "Geodude"
    poke_3.type = "Rock"
    poke_3.evolve = "Can Evolve into Graveler"

    [poke_1, poke_2, poke_3]

  end
end
