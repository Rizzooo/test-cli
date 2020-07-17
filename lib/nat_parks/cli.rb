# Our CLI Controller

require_relative "./version"

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
end

module NatParks
  module Cli
    class Error < StandardError; end
    # Your code goes here...
  end
end
