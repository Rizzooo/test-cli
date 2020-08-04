require './lib/scraper'

class NatParks::States 
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def self.parks
    if self.name == "PA"
      parks = Scraper.parks_pa_scrape 
      parks
    elsif self.name == "NJ"
      parks = Scraper.parks_nj_scrape
      parks
    else 
      nil
    end
  end
 
  def self.list # Should return instances of states user can look into
  
    state_1 = self.new("PA")
    
    state_2 = self.new("NJ")
    
    [state_1, state_2]
  end
  
end