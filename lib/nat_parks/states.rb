require './lib/scraper'

class NatParks::States 
  
  attr_accessor :name, :url
  
 
  def self.states # Should return instances of states user can look into
  
    state_1 = self.new
    state_1.name = Scraper.state_scraper_pa  # To be scraped from NPS
    
    state_2 = self.new
    state_2.name = Scraper.state_scraper_nj # To be scraped from NPS
    
    self.scrape_parks
    
    [state_1, state_2]
  end
  
  def self.scrape_parks
    
    @pa_parks = []
    @nj_parks = []
    
  end
  
  def one_called       
    park_1
    park_2
    park_3
    
  end
  
  def two_called       
    park_1nj
    park_2nj
    park_3nj
    
  end
  
  def park_1          # To be scraped from NPS/PA
    puts "1"
  end
  
  def park_2
    puts "2"
  end
  
  def park_3
    puts "3"
  end
  
  def park_1nj        # To be scraped from NPS/NJ
    puts "4"
  end
  
  def park_2nj
    puts "5"
  end
  
  def park_3nj
    puts "6"
  end
  
end