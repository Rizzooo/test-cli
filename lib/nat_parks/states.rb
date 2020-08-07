require './lib/scraper'

class NatParks::States 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @parks = []
  end
 
  def self.create_states
    state_1 = self.new(Scraper.state_scraper_pa)
    state_2 = self.new(Scraper.state_scraper_nj)
    
    if @name == Scraper.state_scraper_pa
      @parks << Scraper.parks_pa_scrape[@a_park, @b_parks, @c_park]
      
    elsif @name == Scraper.state_scraper_nj
      @parks << Scraper.parks_nj_scrape[@a_parknj, @b_parknj, @c_parknj]
    else 
      nil
    end
    
    @@all << state_1
    @@all << state_2
  end
  
  def parks 
    @parks
  end
  
  def self.all 
    @@all
  end
  
end