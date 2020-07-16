# Our CLI Controller

require_relative "./version"

class Landmarks::CLI
  def call
    puts "Welcome to Landmarks! Are you a Delware resident?"
  end
end

module Test
  module Cli
    class Error < StandardError; end
    # Your code goes here...
  end
end
