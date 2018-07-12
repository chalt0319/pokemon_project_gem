require 'nokogiri'
require 'open-uri'

class Scraper
  attr_accessor :name, :type, :physiology

  def self.poke

    html_1 = open("http://pokemon.wikia.com/wiki/Pikachu")
    doc_1 = Nokogiri::HTML(html_1)

    html_2 = open("http://pokemon.wikia.com/wiki/Bulbasaur")
    doc_2 = Nokogiri::HTML(html_2)

    html_3 = open("http://pokemon.wikia.com/wiki/Squirtle")
    doc_3 = Nokogiri::HTML(html_3)

    html_4 = open ("http://pokemon.wikia.com/wiki/Charmander")
    doc_4 = Nokogiri::HTML(html_4)

    poke_1 = self.new
    poke_1.name = doc_1.css("h1.page-header__title").text
    poke_1.type = doc_1.at_css("span.t-type2").text
    poke_1.physiology = doc_1.css("p")[1].text

    poke_2 = self.new
    poke_2.name = doc_2.css("h1.page-header__title").text
    poke_2.type = doc_2.at_css("span.t-type2").text
    poke_2.physiology = doc_2.css("p")[1].text

    poke_3 = self.new
    poke_3.name = doc_3.css("h1.page-header__title").text
    poke_3.type = doc_3.at_css("span.t-type2").text
    poke_3.physiology = doc_3.css("p")[1].text

    poke_4 = self.new
    poke_4.name = doc_4.css("h1.page-header__title").text
    poke_4.type = doc_4.at_css("span.t-type2").text
    poke_4.physiology = doc_4.css("p")[0].text

    [poke_1, poke_2, poke_3, poke_4]

  end
end
