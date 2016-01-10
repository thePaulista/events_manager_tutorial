require 'csv'

puts "EventManager initialized"

contents = CSV.open "event_attendees.csv", headers: true
contents.each do |row|
  name = row[2]
  puts name
end

# output
# EventManager initialized
# Nguyen
# Hankins
# Xx
# Thomas
# Sackett
# Fuller
# Curry
# Hasegan
# Armideo
# Zielke
# Harmston
# Doe
# Tippit
# Rapetsky
# Fulghum
# Warner
# Davis
# Okaty
# Hartzell

# Converting headers to symbols for easier access

puts "EventManager initialized"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  name = row[:first_name]
  puts name
end

#extracting zipcodes using headers:, and header_converters

puts "EventManager initialized"

contents =  CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  puts "#{name}: #{zipcode}"
end

# output:
# EventManager initialized
# Allison: 20010
# SArah: 20009
# Sarah: 33703
# David: 7306
# Chris:
# Aya: 90210
# Mary Kate: 21230
# Audrey: 95667
# Shiyu: 96734
# Eli: 92037
# Colin: 2703
# Megan: 43201
# Meggie: 94611
# Laura: 924
# Paul: 14517
# Shannon: 3082
# Shannon: 98122
# Nash: 98122
# Amanda: 14841

puts "EventManager initialized"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  first_name = row[:first_name]
  last_name = row[:last_name]
  puts "#{first_name} #{last_name}"
end

# output:
# EventManager initialized
# Allison Nguyen
# SArah Hankins
# Sarah Xx
# David Thomas
# Chris Sackett
# Aya Fuller
# Mary Kate Curry
# Audrey Hasegan
# Shiyu Armideo
# Eli Zielke
# Colin Harmston
# Megan Doe
# Meggie Tippit
# Laura Rapetsky
# Paul Fulghum
# Shannon Warner
# Shannon Davis
# Nash Okaty
# Amanda Hartzell


#first name with the corresponding state
puts "EventManager initialized"
contents = CSV.read "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
    first_name = row[:first_name]
    state = row[:state]
    puts "#{first_name}: #{state}"
end

#first and last names with their email
puts "EventManager initialized"
contents = CSV.read "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  first_name = row[:first_name]
  last_name = row[:last_name]
  email = row[:email_address]
  puts "#{last_name}, #{first_name}:  #{email}"
end

##output
# EventManager initialized
# Nguyen, Allison:   arannon@jumpstartlab.com
# Hankins, SArah:   pinalevitsky@jumpstartlab.com
# Xx, Sarah:   lqrm4462@jumpstartlab.com
# Thomas, David:   gdlia.lepping@jumpstartlab.com
# Sackett, Chris:   fpmorgan07@jumpstartlab.com
# Fuller, Aya:   jtex@jumpstartlab.com
# Curry, Mary Kate:   wmppydaymaker@jumpstartlab.com
# Hasegan, Audrey:   ffbbieucf@jumpstartlab.com
# Armideo, Shiyu:   odfarg06@jumpstartlab.com
# Zielke, Eli:   jbrabeth.buckley@jumpstartlab.com
# Harmston, Colin:   qkristie.lencsak@jumpstartlab.com
# Doe, Megan:   wkganize@jumpstartlab.com
# Tippit, Meggie:   dgsanshamel@jumpstartlab.com
# Rapetsky, Laura:   ikr08@jumpstartlab.com
# Fulghum, Paul:   cnroh@jumpstartlab.com
# Warner, Shannon:   gkjordandc@jumpstartlab.com
# Davis, Shannon:   ltb3@jumpstartlab.com
# Okaty, Nash:   qdansonlm@jumpstartlab.com
# Hartzell, Amanda:   nqm17@jumpstartlab.com

# to display just the headers
# contents = CSV.readlines "event_attendees.csv"
# puts contents[0]
contents = CSV.readline "event_attendees.csv"
print contents
