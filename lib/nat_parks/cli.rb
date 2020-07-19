# Our CLI Controller

require 'nokogiri'
require_relative './states'
require './lib/scraper'

class NatParks::CLI
  def call
    puts "Welcome to NatParks! Are you a resident or visitor in Pennsylvania or New Jersey? [ y / n ]"
    
    answer = gets.chomp
      
      if answer == "y"
        puts "Great!"
        list_states
        
      elsif answer == "n" 
        puts "My apologies. At the moment you must located in one of the 2 states available to proceed."
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
    
    puts "Enter the number [1 or 2] of the state you'd like to view National Park suggestions for."
    puts "Enter 'list' to see list of states."
    puts "Enter 'exit' to exit."
      
    input = gets.chomp
      
      if input.to_i == 1
        Scraper.parks_pa_scrape 
        
      elsif input.to_i == 2
        Scraper.parks_nj_scrape
        
      elsif input.to_i > 2
        puts "Sorry. Number choice is not currently an option."
        states_menu
        
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
      puts "Goodbye."
      exit
    end
  end

  
  
# module NatParks
#  module Cli
#   class Error < StandardError; end
#    # Your code goes here...
#  end
# end
