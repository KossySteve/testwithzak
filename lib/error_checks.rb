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

  def check_doctype
      print "add Doctype" unless file.read().include? "<!DOCTYPE html>"

  end

  def check_lang
      print "add your language tag" unless file.read().match(/<html lang=\"en\">/)
  end

  def check_alt
    line_array = file.read().split(/\n/)
    line_array.each_with_index do |element, index|
      if element.match(/<img/) #element.gsub()
          puts "add alt =\"\" to your img tag on line #{index + 1}" unless element.match(/alt/)
      end
    end
  end
  def check_structure
    structure = ["<!DOCTYPE html>", "<html lang=\"en\">","</html>","<head>","</head>","<body>","</body>"]
    file_string = file.readlines().join.gsub(/\n|\t/, "")#index("</body>")#index{|i| i =~ /<body>/}
    structure.any?{|tag| puts "poor structure check your #{tag} tag" unless file_string.match(tag)  }
  end
  def check_semantics
    file = File.open("index.html", "r")
    semantics = ["<header>","</header>","<main>","</main>","<footer>","</footer>"]
    file_string = file.readlines().join.gsub(/\n|\t/, "")#index("</body>")#index{|i| i =~ /<body>/}
    semantics.any?{|tag| puts "poor semantics " unless file_string.match(tag)  }
  end
  def check_head_tag_contents
    file = File.open("index.html", "r")
    head_contents = ["<title>","<meta", "<link","<style>"]
    file_str = file.readlines().join.gsub(/\n|\t/, "")
    upper_limit = file_str =~ (/<head>/)
    lower_limit = file_str =~ (/<\/head>/)
    head_contents.each do |tag|
       if file_str.include?(tag)
         unless (upper_limit..lower_limit).include? (file_str.index(tag))
           puts "place #{tag} in between <head></head> "
        end
      end
    end
  end
end
