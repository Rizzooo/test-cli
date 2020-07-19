require './lib/scraper'

class NatParks::States 
  
  attr_accessor :name, :url
  
 
  def self.states # Should return instances of states user can look into
  
    state_1 = self.new
    state_1.name = Scraper.state_scraper_pa  # To be cleaned up
    
    state_2 = self.new
    state_2.name = Scraper.state_scraper_nj # To be cleaned up
    
    self.scrape_parks
    
    [state_1, state_2]
  end
  
  def self.scrape_parks
    
    @pa_parks = []
    @nj_parks = []
    
  end
  
  def two_called       
    park_1nj
    park_2nj
    park_3nj
    
  end
  
end