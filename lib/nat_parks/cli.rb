# Our CLI Controller

require './lib/nat_parks'
require_relative "./version"
require 'nokogiri'

class NatParks::CLI
  def call
    puts "Welcome to NatParks! Are you a Delware resident? [ y / n ]"
    answer = gets.chomp
      if answer == "y"
        puts "Great! Here are all of the National Parks and Historic Trails in your home-state!"
      else 
        puts "My apologies. At the moment you must be a Delaware resident to use NatParks."
        exit
      end
  end
  
  def choices
    puts "Which park/trail would you like to learn more about?"
    puts "\n1. ... \n2. ... \n3. ..."
    input = gets.chomp 
    
    case input
      
    end
  end
end

module NatParks
  module Cli
    class Error < StandardError; end
    # Your code goes here...
  end
end
