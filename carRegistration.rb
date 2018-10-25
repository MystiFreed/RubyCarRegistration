# RubyCarRegistration
This project is intended to demonstrate an understanding of Ruby.

system "cls"
#This program is intended to capture autos and owners in separate arrays, then output
#the data at the user's request.

#Methods
#Intro to the program
def intro()
  puts "This program will allow you to enter a new owner and vehicle, review all the vehicles currently registered,"
  puts "edit a vehicle/owner or delete a vehicle and owner."
  puts "1: Enter a new owner and vehicle."
  puts "2: Review all vehicles currently registered."
  puts "3: Edit a vehicle/owner."
  puts "4: Delete a vehicle and owner."
  puts "5: End program."
  puts "Please enter 1, 2, 3, 4 or 5: "
  Integer selection = gets
  while selection != 5
    if selection == 1
      generate_id()
      capture_owner()
      capture_auto()
    end
  end
end

#Capture the owner of the vehicle
def capture_owner()
  puts "Please enter the owner information."
  print "First name: "
  first_name = gets.downcase
  print "Last name: "
  last_name = gets.downcase

  puts "To confirm, the owner's name is #{first_name.chomp.capitalize} #{last_name.chomp.capitalize}, correct? T/F"
  is_accurate = gets.chomp.downcase

  if is_accurate == "f"
    puts "Please enter the owner information."
    print "First name: "
    first_name = gets.downcase
    print "Last name: "
    last_name = gets.downcase
  end

end

def capture_auto()
  puts "Please enter the vehicle information."
  print "Make: "
  make = gets.downcase
  print "Model: "
  model = gets.downcase
  print "Year: "
  year = gets.downcase

  if year.length != 4
    print "Please re-enter the year as a four digit figure (ex: 1995): "
    year = gets
  end

  print "VIN: "
  vin = gets
end

def generate_id()
  id = 0
  id += 1
end



intro()
