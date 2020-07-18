# Our CLI Controller

require 'nokogiri'

class NatParks::CLI
  def call
    puts "Welcome to NatParks! Are you a Pennsylvania, Delware or New Jersey resident? [ y / n ]"
    
    answer = gets.chomp
      
      if answer == "y"
        puts "Great! Here's the list of available states to explore!"
        list_states
        
      elsif answer == "n" 
        puts "My apologies. At the moment you must located in one of the 3 states, previously disclosed, to use NatParks."
        goodbye
        
      else
        puts "Sorry, I didn't catch that. Please enter either 'y' or 'n'."
        call
      end
  end
  
  def list_states
    @states = NatParks::States.states
    @states.each.with_index(1) do |state, i|
      puts "#{i}. #{state.name}"
    end
    states_menu
  end
      
  def states_menu
    input = nil
    
    while input != "exit"
    
    puts "Enter the number [1 - 3] of the state you'd like to dive deeper into."
    puts "Enter 'list' to see list of state."
    puts "Enter 'exit' to exit."
      
    input = gets.chomp
      
      if input.to_i > 0
        the_state = @states[input.to_i - 1]
        puts "#{the_state.name}"
        puts "#{the_state.park_1}"
        puts "#{the_state.park_2}"
        puts "#{the_state.park_3}"
        
      elsif input == "list"
        list_states
        
      elsif input == exit 
        goodbye
        
      else 
        puts "Sorry, I didn't catch that. Please enter 'list' or 'exit'"
      end
    end 
  end
    
    def goodbye
      puts "Goodbye"
      exit
    end
  end

  
  
# module NatParks
#  module Cli
#   class Error < StandardError; end
#    # Your code goes here...
#  end
# end
