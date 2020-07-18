class NatParks::States 
  
  attr_accessor :name, :url
  
  def self.states # Should return instances of states user can look into
  
    self.scrape_parks
    
  end
  
  def self.scrape_parks
    state_1 = self.new
    state_1.name = "PA"
    
    state_2 = self.new
    state_2.name = "DE"
    
    state_3 = self.new
    state_3.name = "NJ"
    
    
    [state_1, state_2, state_3]
  end
  
  def park_1
    puts "1"
  end
  
  def park_2
    puts "2"
  end
    
  def park_3
    puts "3"
  end
  
end