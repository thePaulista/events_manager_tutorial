require 'csv'
# pseudocode for cleaing zip codes

puts "EventManager initialized"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  puts "#{name} #{zipcode}"
end

# output
# EventManager initialized
# Allison 20010
# SArah 20009
# Sarah 33703
# David 7306
# Chris
# Aya 90210
# Mary Kate 21230
# Audrey 95667
# Shiyu 96734
# Eli 92037
# Colin 2703
# Megan 43201
# Meggie 94611
# Laura 924
# Paul 14517
# Shannon 3082
# Shannon 98122
# Nash 98122
# Amanda 14841

# ------correct the file to include a default five digit code, or append zeros
# or truncate zipcodes until all include a five digit code

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]

  if zipcode.nil?
    zipcode = "00000"
  elsif zipcode.length < 5
    zipcode = zipcode.rjust(5, "0")
  elsif zipcode.length > 5
    zipcode = zipcode[0..4]
  end
  puts "#{name} #{zipcode}"
end

# ----output
# Allison 20010
# SArah 20009
# Sarah 33703
# David 07306
# Chris 00000
# Aya 90210
# Mary Kate 21230
# Audrey 95667
# Shiyu 96734
# Eli 92037
# Colin 02703
# Megan 43201
# Meggie 94611
# Laura 00924
# Paul 14517
# Shannon 03082
# Shannon 98122
# Nash 98122
# Amanda 14841


# -----reassigning the if/else to a method
def clean_zipcode(zipcode)
  if zipcode.nil?
    "00000"
  elsif zipcode.length < 5
    zipcode.rjust(5, "0")
  elsif zipcode.length > 5
    zipcode[0..4]
  else
    zipcode
  end
end

puts "EventsManager initialized"

contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol
contents.each do |row|
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  puts "#{name} #{zipcode}"
end

#-------
# refactoring the above method

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5,"0")[0..4]
end

puts "EventsManager initialized"

contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol
contents.each do |row|
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  puts "#{name} #{zipcode}"
end
