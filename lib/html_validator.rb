require './lib/error_checks.rb'
#require './lib/main.rb'
class Linter
  include Checks

  attr_accessor :file, :file_content

  def initialize(filename)
    @file_content = File.read(filename)
    @file = File.read(filename).split(/\n/)
  end

  def run_all_checks
    puts check_tags(@file)
    puts check_apostrophe(@file)
    puts check_alt(@file)
    puts check_doctype(@file)
    puts check_lang(@file)
    puts check_structure(@file_content)
    puts check_semantics(@file_content)
    puts check_head_tag_contents(@file_content)
  end
end

Linter.new("index.html").run_all_checks
