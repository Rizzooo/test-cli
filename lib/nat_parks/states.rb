require './lib/scraper'

class NatParks::States 
  
  attr_accessor :name, :url
  
 
  def self.states # Should return instances of states user can look into
  
    state_1 = self.new
    state_1.name = Scraper.state_scraper_pa  # To be cleaned up
    
    state_2 = self.new
    state_2.name = Scraper.state_scraper_nj # To be cleaned up
    
    [state_1, state_2]
  end
  
end