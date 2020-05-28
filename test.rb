def check_tags(file)
  error_statement = ''
  file.each_with_index do |element, index|
    arr = element.scan(/<|>/)
    error_statement << "fix tags at line #{index + 1} " unless (arr.length % 2).zero?
  end
  return error_statement
end

puts check_tags(["<titlemint.com/sign_up</title>"]) == "fix tags at line #{0 + 1} "

def check_apostrophe(file)
  error_statement = ''
  file.each_with_index do |element, index|
    arr = element.scan(/"|"/)
    error_statement << "fix apostrophe \"\" at line #{index + 1} \n " unless (arr.length % 2).zero?
  end
  return error_statement
end
puts check_apostrophe([]).class == String

def check_doctype(file)
  'add or correct Doctype' unless file.include? '<!DOCTYPE html>'
end
puts check_doctype([]).class == String
