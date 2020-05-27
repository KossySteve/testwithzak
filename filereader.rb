
#    All images must have the alt attribute: <img src="image.gif" alt="image description">.
puts "#{<img src="image.gif" alt="image description">.}"

  #puts file.readline()
  #puts file.readlines().split(/\n/)
  #x = file.readlines().join.gsub(/\n|\t/, "")[281..2193]#index("</body>")#index{|i| i =~ /<body>/}
    # Missing closing tags  (i.e., <b> and </b>)
    #arr = []
    #x.scan(/<|>/) {|i|arr << i}
  #print arr.size%2 == 0 ? "good tags" : "fix your tags"

  #names = ["Jeri Faria",  "Audry Donoho", "Scotty Chaves",  "Raven Grimsley",  "Leotah Crowe"]
  #Get items from array where first name has five letters:
  #print names.grep(/^\w{5}\s/)
  #=> ["Audry Donoho", "Lance Barrio", "Raven Grimsley", "Leota Crowe", "Mazie Norman"]
  # Head content must be within the <head>
  #    <title>, <meta>, and <style> tags must be within the <head> and </head> tags.
  =begin
  file = File.open("index.html", "r")
  lines = File.open("index.html", "r").read().split(/\n/)
  line_of_opening_headtag = 0
  line_of_closing_headtag = 0
  lines.each_with_index { |line, index| line_of_opening_headtag = index + 1 if line.match(/<head>/) }
  lines.each_with_index { |line, index| line_of_closing_headtag = index if line.match(/<\/head>/) }
  head_contents = ["title","meta", "link","style"]
  head_contents.each_with_index { |tag| print " place #{tag}" unless file.readlines()[2..8].include?tag }
  page_head = file.readlines()[line_of_opening_headtag...line_of_closing_headtag]
  page_head.each_with_index { |line, index| if line.gsub(/\W+/) }
  page_head.each { |line|
    unless line.gsub(/\W+/, "").match(head_contents.map)
      puts " place <#{}> between head tags"
    end
    }
  file.close()
  file = File.open("index.html", "r")
  puts file.readlines().join.gsub(/\n|\t/, "").index("<body>")
  def fix_apostrophe
    file = File.open("index.html", "r") do
      file = File.open("index.html", "r")
      line_array = file.read().split(/\n/)
      line_array.each_with_index do |element, index|
        arr = element.scan(/"|"/)
         print "fix apostrophe \"\" at line #{index + 1} \n " unless arr.length%2 == 0
        end
      end
  end
  =end
