# Iteration 0

puts "EventManager Initialized!"

#this puts everything in an array of columns
contents = File.readlines "event_attendees.csv"
contents.each do |line|
  columns = line.split(",")
  puts columns
end

# to extract the column of first names only
puts "EventManager initialized"

contents = File.readlines "event_attendees.csv"
contents.each do |line|
  columns = line.split(",")
  name = columns[2]
  puts name
end

# to remove the header and only extract the first name
# not the best way, in case header content changes
puts "EventManager initialized"

contents = File.readlines "event_attendees.csv"
contents.each do |line|
  next if line.include? " ,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
  columns = line.split(",")
  name = columns[2]
  puts name
end

#but we could also use the .include?. let's science it!
puts "EventManager initialized"

contents = File.readlines "event_attendees.csv"
contents.each do |line|
  next if line.include? "first_Name"
  columns = line.split(",")
  name = columns[2]
  puts name
end


puts "EventManager initialized"

lines = File.readlines "event_attendees.csv"
row_index = 0
lines.each do |line|
    puts row_index = row_index + 1
    next if row_index == 1
    columns = line.split(",")
    name = columns[2]
    puts name
  end

# using Array#eachwithindex instead
# this method assumes header row is the first in the column,
# but saves the trouble of not having it attached to a header called "name"
# in case headers are changed in the future
puts "EventManager initialized"

lines = File.readlines "event_attendees.csv"
lines.each_with_index do |line, index|
  next if index == 0
  columns = line.split(",")
  name = columns[2]
  puts name
end

# Output
# EventManager initialized
# Allison
# SArah
# Sarah
# David
# Chris
# Aya
# Mary Kate
# Audrey
# Shiyu
# Eli
# Colin
# Megan
# Meggie
# Laura
# Paul
# Shannon
# Shannon
# Nash
# Amanda
