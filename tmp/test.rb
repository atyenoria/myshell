puts "asdfa"
puts "asdfaaaa"



file = File.open("text.txt","a")
  file.each do |paragraph|
    print paragraph
  end
file.close