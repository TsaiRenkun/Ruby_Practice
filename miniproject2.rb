dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
    somehash.keys
# Write code here
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
    somehash[key]
# Write code here
end
 
# Execution flow
loop do
  puts "Do you want to lookup an area code based on city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != 'y'
  puts "which city do you want to lookup the areacode for?"
  puts get_city_names(dial_book)
  print "City name: "
  city_name = gets.chomp.downcase
  if dial_book.include?(city_name)
    puts "the area code for #{city_name} is #{get_area_code(dial_book,city_name)}"
  else
    puts "City is not in dial book"
  end
end