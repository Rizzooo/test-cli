# Our CLI Controller

require './lib/nat_parks'
require_relative "./version"
require 'nokogiri'

class NatParks::CLI
  def call
    puts "Welcome to NatParks! Are you a Pennsylvania, Delware or New Jersey resident? [ y / n ]"
    answer = gets.chomp
      if answer == "y"
        puts "Great! Here's the list of available states to explore!"
        choices
      else 
        puts "My apologies. At the moment you must located in one of the 3 states, previously disclosed, to use NatParks."
        exit
      end
  end
  
  def choices
    print_states
    input = nil
    
    while input != "exit"
    
    puts "Enter the number [1 - 3] of the state you'd like to dive deeper into."
    puts "Enter 'list' to see list of state."
    puts "Enter 'exit' to exit."
      
    input = gets.chomp
      
      case input
        when "1"
          puts "\nParks and Trails in PA"
        when "2"
          puts "\nParks and Trails in DE"
        when "3"
          puts "\nParks and Trails in NJ"
        when "list"
          print_states
        end
      end
      if input == "exit"
        exit
      end
    end
    
    def print_states
      puts "1. PA"
      puts "2. DE"
      puts "3. NJ"
    end
  end

# module NatParks
#  module Cli
#   class Error < StandardError; end
#    # Your code goes here...
#  end
# end
