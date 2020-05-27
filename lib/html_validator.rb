require './lib/error_checks.rb'
#require './lib/main.rb'
class Linter
  include Checks

  attr_accessor :file

  def initialize(filename)
    @file = File.read(filename).split(/\n/)
  end

  def run_all_checks
    puts check_tags(@file)
    puts check_apostrophe(@file)
  end
end

l = Linter.new("index.html")

puts l.run_all_checks
