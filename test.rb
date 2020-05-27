#1 No Doctype at all

file = File.open("index.html", "r")
  #print "add html language" unless
  print "enter your language tag" unless file.read().match(/<html lang=\"en\">/)
file.close()

#2 No language
=begin
File.open("index.html", "r") do
  |file|
  print "add html language" unless file.read().include? "<html lang=\"en\">"
end
=end

# Missing closing tags  (i.e., <b> and </b>)
# Missing / on self-closing elements
# Forgetting to convert special characters like&
# comment declaration
# Block elements inside inline elements

# 6. Missing ALT Text
#    All images must have the alt attribute: <img src="image.gif" alt="image description">.
# Using attributes like “width” and “height”
# Starting a class or ID with a number
# Missing quotation marks for attribute values
# <img src=myimage.gif>, <font color=#FF00FF>
# Head content must be within the <head>
#    <title>, <meta>, and <style> tags must be within the <head> and </head> tags.
#  Missing </body> or </html> tags
#   Improper use of form tags 9
# print "please close ur fucking tags" if arr.none? { |tag| tag.match(/<\/\w+>+/) }

#puts "error pls close tag" unless arr.size%2 ==0

#IO.write(filepath, File.open(filepath) do |f|f.read.gsub(//<appId>\d+<\/appId>/, "<appId>42</appId>"/)
#  end)
