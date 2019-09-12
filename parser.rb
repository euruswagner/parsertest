require 'rubygems'
require 'nokogiri'

page = Nokogiri::HTML(open("restaurant.html"))

page.css('.accordion').each do |r|
  name = r.css('.name').text
  puts name
  add = r.css('.map-caller').first.text.strip
  puts add
  puts "---"
  Place.create(name: name, address: add)
end