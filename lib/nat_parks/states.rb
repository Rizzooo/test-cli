class NatParks::States 
  
  attr_accessor :name, :url
  
  def self.states # Should return instances of states user can look into
    state_1 = self.new
    state_1.name = "PA"
    
    state_2 = self.new
    state_2.name = "DE"
    
    state_3 = self.new
    state_3.name = "NJ"
    
    [state_1, state_2, state_3]
  end
  
end