require './lib/scraper'

class NatParks::States 
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def parks
    if @name == Scraper.state_scraper_pa
      parks = Scraper.parks_pa_scrape 
      parks
    elsif @name == Scraper.state_scraper_nj
      parks = Scraper.parks_nj_scrape
      parks
    else 
      nil
    end
  end
 
  def self.create_states
  
    state_1 = self.new(Scraper.state_scraper_pa)
    
    state_2 = self.new(Scraper.state_scraper_nj)
    
    [state_1, state_2]
  end
  
end