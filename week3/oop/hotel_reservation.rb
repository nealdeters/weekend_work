# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
reservation = HotelReservation.new({customer_name: "Neal Deters", date: "12/16/16", room_number: 216})

# The ability to change a room number even after a reservation has already been created
puts "Change room number after reservation has been created."
puts 'Checking...'
puts
reservation.room_number = 88

if reservation.room_number == 88
  puts "PASS"
else
  puts "F"
end

# The add_a_fridge method
puts "Add a fridge"
puts 'Checking...'
puts

reservation.add_a_fridge

if reservation.amenities.include?("fridge")
  puts "PASS"
else
  puts "F"
end

# The add_a_crib method
puts "Add a crib"
puts 'Checking...'
puts
reservation.add_a_crib

if reservation.amenities.include?("crib")
  puts "PASS"
else
  puts "F"
end

# The add_a_custom_amenity method
puts "Add a custom amentiy"
puts 'Checking...'
puts
reservation.add_a_custom_amenity("Ice Cream")

if reservation.amenities.include?("Ice Cream")
  puts "PASS"
else
  puts "F"
end

p reservation