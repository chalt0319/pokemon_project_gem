class Pokemon

attr_accessor :name, :type, :physiology
@@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
