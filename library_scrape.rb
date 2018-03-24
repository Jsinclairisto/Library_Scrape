require 'nokogiri'
require 'open-uri'

url = "http://library.humboldt.edu/humco/holdings/ArcataCityAid.htm"

document = open(url)
content = document.read
doc = Nokogiri::HTML(content)

main_content = doc.css('.content').inner_text

write_handler = File.new("LibraryInfo.csv","w")
write_handler1 = File.new("LibraryInfo.txt","w")
write_handler2 = File.new("LibraryInfo.xml","w")
write_handler3 = File.new("LibraryInfo.pdf","w")

write_handler.puts(main_content + '__________________________________________________________')

write_handler1.puts(main_content + '__________________________________________________________')

write_handler2.puts(main_content + '__________________________________________________________')

write_handler3.puts(main_content + '__________________________________________________________')

data_from_file1 = File.read("LibraryInfo.csv")
data_from_file2 = File.read("LibraryInfo.txt")
data_from_file3 = File.read("LibraryInfo.xml")
data_from_file3 = File.read("LibraryInfo.pdf")

puts data_from_file1
