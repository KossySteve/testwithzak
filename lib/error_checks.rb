module Checks
  def check_tags(file)
    error_statement = ""
    file.each_with_index do |element, index|
      arr = element.scan(/<|>/)
      error_statement << "fix tags at line #{index + 1} " unless arr.length%2 == 0
    end
    return error_statement
  end

  def check_apostrophe(file)
    error_statement = ""
    file.each_with_index do |element, index|
      arr = element.scan(/"|"/)
      error_statement << "fix apostrophe \"\" at line #{index + 1} \n " unless arr.length%2 == 0
    end
    return error_statement
  end

  def check_doctype(file)
      print "add or correct Doctype" unless file.include? "<!DOCTYPE html>"
  end

  def check_lang(file)
      print "add your language tag" unless file.include?(/<html lang=\"en\">/)
  end

  def check_alt(file)
      error_statement = ""
      file.each_with_index do |element, index|
      if element.match(/<img/) #element.gsub()
        error_statement << "add alt =\"\" to your img tag on line #{index + 1}" unless element.match(/alt/)
      end
    end
    return error_statement
  end
  def check_structure(file)
    structure = ["<html lang=\"en\">","</html>","<head>","</head>","<body>","</body>"]
    file_string = file.gsub(/\n|\t/, "")
    structure.any?{|tag| print "poor structure check your #{tag} tag" unless file_string.match(tag)  }
    return "\n"
  end
  def check_semantics(file)
    semantics = ["<header>","</header>","<main>","</main>","<footer>","</footer>"]
    file_string = file.gsub(/\n|\t/, "")
    semantics.any?{|tag| print "poor semantics " unless file_string.match(tag)  }
    return "\n"
  end
  def check_head_tag_contents(file)
    head_contents = ["<title>","<meta", "<link","<style>"]
    file_str = file.gsub(/\n|\t/, "")
    upper_limit = file_str =~ (/<head>/)
    lower_limit = file_str =~ (/<\/head>/)
    head_contents.each do |tag|
       if file_str.include?(tag)
         unless (upper_limit..lower_limit).include? (file_str.index(tag))
           print "place #{tag} in between <head></head> "
        end
      end
    end
    return "\n"
  end
end
