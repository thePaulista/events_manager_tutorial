require 'csv'
require 'sunlight/congress'

# puts  before = Time.now

Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"
#
# def clean_zipcode(zipcode)
#   zipcode.to_s.rjust(5,"0")[0..4]
# end

# puts "EventManager initialized."
#
# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol
#
# contents.each do |row|
#   name = row[:first_name]
#
#   zipcode = clean_zipcode(row[:zipcode])
#
#   legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)
#
#   puts "#{name} #{zipcode} #{legislators}"
# end

# ---output
# EventManager initialized.
# Allison 20010 [#<Sunlight::Congress::Legislator:0x007fa09504c558 @first_name="Eleanor", @last_name="Norton", @website="http://norton.house.gov">]
# SArah 20009 [#<Sunlight::Congress::Legislator:0x007fa095839d60 @first_name="Eleanor", @last_name="Norton", @website="http://norton.house.gov">]
# Sarah 33703 [#<Sunlight::Congress::Legislator:0x007fa095811770 @first_name="David", @last_name="Jolly", @website="http://jolly.house.gov">, #<Sunlight::Congress::Legislator:0x007fa095811720 @first_name="Marco", @last_name="Rubio", @website="http://www.rubio.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa0958116f8 @first_name="Bill", @last_name="Nelson", @website="http://www.billnelson.senate.gov">]
# David 07306 [#<Sunlight::Congress::Legislator:0x007fa095027d48 @first_name="Cory", @last_name="Booker", @website="http://www.booker.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa095027d20 @first_name="Donald", @last_name="Payne", @website="http://payne.house.gov">, #<Sunlight::Congress::Legislator:0x007fa095027cf8 @first_name="Albio", @last_name="Sires", @website="http://sires.house.gov">, #<Sunlight::Congress::Legislator:0x007fa095027cd0 @first_name="Robert", @last_name="Menéndez", @website="http://www.menendez.senate.gov">]
# Chris 00000 []
# Aya 90210 [#<Sunlight::Congress::Legislator:0x007fa09485dd60 @first_name="Ted", @last_name="Lieu", @website="https://lieu.house.gov">, #<Sunlight::Congress::Legislator:0x007fa09485dd38 @first_name="Brad", @last_name="Sherman", @website="http://sherman.house.gov">, #<Sunlight::Congress::Legislator:0x007fa09485dc98 @first_name="Adam", @last_name="Schiff", @website="http://schiff.house.gov">, #<Sunlight::Congress::Legislator:0x007fa09485dc70 @first_name="Barbara", @last_name="Boxer", @website="http://www.boxer.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa09485dc48 @first_name="Dianne", @last_name="Feinstein", @website="http://www.feinstein.senate.gov">]
# Mary Kate 21230 [#<Sunlight::Congress::Legislator:0x007fa0950df880 @first_name="John", @last_name="Sarbanes", @website="https://sarbanes.house.gov">, #<Sunlight::Congress::Legislator:0x007fa0950df830 @first_name="C.", @last_name="Ruppersberger", @website="http://ruppersberger.house.gov">, #<Sunlight::Congress::Legislator:0x007fa0950df7b8 @first_name="Barbara", @last_name="Mikulski", @website="http://www.mikulski.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa0950df790 @first_name="Elijah", @last_name="Cummings", @website="http://cummings.house.gov">, #<Sunlight::Congress::Legislator:0x007fa0950df768 @first_name="Benjamin", @last_name="Cardin", @website="http://www.cardin.senate.gov">]
# Audrey 95667 [#<Sunlight::Congress::Legislator:0x007fa0940396e8 @first_name="Tom", @last_name="McClintock", @website="http://mcclintock.house.gov">, #<Sunlight::Congress::Legislator:0x007fa0940396c0 @first_name="Barbara", @last_name="Boxer", @website="http://www.boxer.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa094039670 @first_name="Dianne", @last_name="Feinstein", @website="http://www.feinstein.senate.gov">]
# Shiyu 96734 [#<Sunlight::Congress::Legislator:0x007fa094906de8 @first_name="Tulsi", @last_name="Gabbard", @website="http://gabbard.house.gov">, #<Sunlight::Congress::Legislator:0x007fa094906cf8 @first_name="Brian", @last_name="Schatz", @website="http://www.schatz.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa094906cd0 @first_name="Mazie", @last_name="Hirono", @website="http://www.hirono.senate.gov">]
# Eli 92037 [#<Sunlight::Congress::Legislator:0x007fa0950b6c50 @first_name="Scott", @last_name="Peters", @website="http://scottpeters.house.gov">, #<Sunlight::Congress::Legislator:0x007fa0950b6c28 @first_name="Darrell", @last_name="Issa", @website="http://issa.house.gov">, #<Sunlight::Congress::Legislator:0x007fa0950b6c00 @first_name="Barbara", @last_name="Boxer", @website="http://www.boxer.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa0950b6bd8 @first_name="Dianne", @last_name="Feinstein", @website="http://www.feinstein.senate.gov">]
# Colin 02703 [#<Sunlight::Congress::Legislator:0x007fa09508c450 @first_name="Joseph", @last_name="Kennedy", @website="http://kennedy.house.gov">, #<Sunlight::Congress::Legislator:0x007fa09508c428 @first_name="Elizabeth", @last_name="Warren", @website="http://www.warren.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa09508c388 @first_name="Edward", @last_name="Markey", @website="http://www.markey.senate.gov">]
# Megan 43201 [#<Sunlight::Congress::Legislator:0x007fa095064720 @first_name="Joyce", @last_name="Beatty", @website="http://beatty.house.gov">, #<Sunlight::Congress::Legislator:0x007fa0950646f8 @first_name="Patrick", @last_name="Tiberi", @website="http://tiberi.house.gov">, #<Sunlight::Congress::Legislator:0x007fa0950646d0 @first_name="Steve", @last_name="Stivers", @website="http://stivers.house.gov">, #<Sunlight::Congress::Legislator:0x007fa0950646a8 @first_name="Robert", @last_name="Portman", @website="http://www.portman.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa095064630 @first_name="Sherrod", @last_name="Brown", @website="http://www.brown.senate.gov">]
# Meggie 94611 [#<Sunlight::Congress::Legislator:0x007fa095045e38 @first_name="Mark", @last_name="DeSaulnier", @website="https://desaulnier.house.gov">, #<Sunlight::Congress::Legislator:0x007fa095045e10 @first_name="Barbara", @last_name="Lee", @website="http://lee.house.gov">, #<Sunlight::Congress::Legislator:0x007fa095045de8 @first_name="Barbara", @last_name="Boxer", @website="http://www.boxer.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa095045dc0 @first_name="Dianne", @last_name="Feinstein", @website="http://www.feinstein.senate.gov">]
# Laura 00924 [#<Sunlight::Congress::Legislator:0x007fa095832fb0 @first_name="Pedro", @last_name="Pierluisi", @website="http://pierluisi.house.gov">]
# Paul 14517 [#<Sunlight::Congress::Legislator:0x007fa095808f58 @first_name="Chris", @last_name="Collins", @website="http://chriscollins.house.gov">, #<Sunlight::Congress::Legislator:0x007fa095808ee0 @first_name="Charles", @last_name="Schumer", @website="http://www.schumer.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa095808eb8 @first_name="Kirsten", @last_name="Gillibrand", @website="http://www.gillibrand.senate.gov">]
# Shannon 03082 [#<Sunlight::Congress::Legislator:0x007fa0950258b8 @first_name="Ann", @last_name="Kuster", @website="http://kuster.house.gov">, #<Sunlight::Congress::Legislator:0x007fa095025868 @first_name="Kelly", @last_name="Ayotte", @website="http://www.ayotte.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa095025840 @first_name="Jeanne", @last_name="Shaheen", @website="http://www.shaheen.senate.gov">]
# Shannon 98122 [#<Sunlight::Congress::Legislator:0x007fa09488f770 @first_name="Adam", @last_name="Smith", @website="https://adamsmith.house.gov">, #<Sunlight::Congress::Legislator:0x007fa09488f748 @first_name="Patty", @last_name="Murray", @website="http://www.murray.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa09488f720 @first_name="Jim", @last_name="McDermott", @website="http://mcdermott.house.gov">, #<Sunlight::Congress::Legislator:0x007fa09488f6d0 @first_name="Maria", @last_name="Cantwell", @website="http://www.cantwell.senate.gov">]
# Nash 98122 [#<Sunlight::Congress::Legislator:0x007fa0948447c0 @first_name="Adam", @last_name="Smith", @website="https://adamsmith.house.gov">, #<Sunlight::Congress::Legislator:0x007fa094844680 @first_name="Patty", @last_name="Murray", @website="http://www.murray.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa0948445e0 @first_name="Jim", @last_name="McDermott", @website="http://mcdermott.house.gov">, #<Sunlight::Congress::Legislator:0x007fa094844518 @first_name="Maria", @last_name="Cantwell", @website="http://www.cantwell.senate.gov">]
# Amanda 14841 [#<Sunlight::Congress::Legislator:0x007fa094049570 @first_name="Charles", @last_name="Schumer", @website="http://www.schumer.senate.gov">, #<Sunlight::Congress::Legislator:0x007fa0940494f8 @first_name="Tom", @last_name="Reed", @website="http://reed.house.gov">, #<Sunlight::Congress::Legislator:0x007fa094049480 @first_name="Kirsten", @last_name="Gillibrand", @website="http://www.gillibrand.senate.gov">]

# legislators_names = []
# legistlators.each do |legistlator|
#   legislator_name = "#{legislator.first_name} #{legislator.last_name}"
#   legislator_names.push legislator_name
# end

# using enumerables
# legislator_names = legislators.collect do |legislator|
#   "#{legislator.first_name} #{legislator.last_name}"
# end

# puts before = Time.now
#
# def clean_zipcode(zipcode)
#   zipcode.to_s.rjust(5,"0")[0..4]
# end
#
# puts "EventManager initialized."
#
# contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol
#
# contents.each do |row|
#   name = row[:first_name]
#
#   zipcode = clean_zipcode(row[:zipcode])
#   legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)
#   legislator_names = legislators.collect do |legislator|
#     "#{legislator.first_name} #{legislator.last_name}"
#   end
#
#   legislators_string = legislator_names.join(", ")
#   puts "#{name} #{zipcode} #{legislators_string}"
# end
# puts (Time.now - before)

# ----output
# 2016-01-09 20:16:20 -0700
# EventManager initialized.
# Allison 20010 Eleanor Norton
# SArah 20009 Eleanor Norton
# Sarah 33703 David Jolly, Marco Rubio, Bill Nelson
# David 07306 Cory Booker, Donald Payne, Albio Sires, Robert Menéndez
# Chris 00000
# Aya 90210 Ted Lieu, Brad Sherman, Adam Schiff, Barbara Boxer, Dianne Feinstein
# Mary Kate 21230 John Sarbanes, C. Ruppersberger, Barbara Mikulski, Elijah Cummings, Benjamin Cardin
# Audrey 95667 Tom McClintock, Barbara Boxer, Dianne Feinstein
# Shiyu 96734 Tulsi Gabbard, Brian Schatz, Mazie Hirono
# Eli 92037 Scott Peters, Darrell Issa, Barbara Boxer, Dianne Feinstein
# Colin 02703 Joseph Kennedy, Elizabeth Warren, Edward Markey
# Megan 43201 Joyce Beatty, Patrick Tiberi, Steve Stivers, Robert Portman, Sherrod Brown
# Meggie 94611 Mark DeSaulnier, Barbara Lee, Barbara Boxer, Dianne Feinstein
# Laura 00924 Pedro Pierluisi
# Paul 14517 Chris Collins, Charles Schumer, Kirsten Gillibrand
# Shannon 03082 Ann Kuster, Kelly Ayotte, Jeanne Shaheen
# Shannon 98122 Adam Smith, Patty Murray, Jim McDermott, Maria Cantwell
# Nash 98122 Adam Smith, Patty Murray, Jim McDermott, Maria Cantwell
# Amanda 14841 Charles Schumer, Tom Reed, Kirsten Gillibrand
# 2.426892

before = Time.now

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5, "0")[0..4]
end

def legislators_by_zipcode(zipcode)
  legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)

  legislator_names = legislators.collect do |legislator|
    "#{legislator.first_name} #{legislator.last_name}"
  end

   legislator_names.join(", ")
 end

 puts "EventManager initialized."

 contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol
 contents.each do |row|
   name = row[:first_name]
   zipcode = clean_zipcode(row[:zipcode])

   legislators = legislators_by_zipcode(zipcode)

   puts "#{name} #{zipcode} #{legislators}"
 end

 puts Time.now - before
