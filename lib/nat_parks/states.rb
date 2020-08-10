require './lib/scraper'
require 'pry'

class NatParks::States 
  attr_accessor :name, :parks
  
  @@all = []
  
  def initialize(name, parks)
    @name = name
    @parks = parks.join(", ")
    save
  end
  
  def self.parks
    @parks
  end
  
  def self.all 
    @@all
  end
  
  def save
    @@all << self
  end
  
end