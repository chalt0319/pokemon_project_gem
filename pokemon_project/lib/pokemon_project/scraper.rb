require 'nokogiri'
require 'open-uri'

class Scraper
  attr_accessor :name, :type, :evolve

  def self.poke

    html_1 = open("http://pokemon.wikia.com/wiki/Pikachu")
    doc_1 = Nokogiri::HTML(html_1)

    poke_1 = self.new
    poke_1.name = doc_1.css("h1.page-header__title").text
    poke_1.type = doc_1.at_css("span.t-type2").text
    poke_1.evolve = "Can Evolve into #{doc_1.at_css("a").}"

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
