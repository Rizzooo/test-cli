require './lib/scraper'

class NatParks::States 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name, park1 = nil, park2 = nil, park3 = nil)
    @name = name
    @parks = []
    @parks << park1 << park2 << park3
    save
  end
  
  def parks
    @parks.each_with_index do |park, i|
      "#{i}. #{park}"
    end
  end
  
  def self.all 
    @@all
  end
  
  def save
    @@all << self
  end
  
end