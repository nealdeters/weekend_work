# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 
class Tv
  attr_accessor :power, :volume, :channel

  def initialize
    @power = "off"
    @volume = 0
    @channel = 0
  end

end

class Remote

  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    # if @tv.power == "on"
    #   @tv.power = "off"
    # else
    #   @tv.power = "on"
    # end
    @tv.power == "on" ? @tv.power = "off" : @tv.power = "on"
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(station)
    @tv.channel = station.to_i
  end

end


puts "Testing..."
puts
# The Tv class will have the attributes: power, volume, and channel. 
tv = Tv.new

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
remote = Remote.new(tv)

# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
puts "TV has power, volume, and channel"
puts

puts "Toggle power"
puts
remote.toggle_power

if tv.power == "on"
  puts "PASS"
else
  puts "F"
end

# increment_volume (this will increase the tv's volume by 1)
puts "Increment volume"
puts
remote.increment_volume

if tv.volume == 1
  puts "PASS"
else
  puts "F"
end

# decrement_volume (this will decrease the tv's volume by 1)
puts "Decrement volume"
puts
remote.decrement_volume == 0

if tv.volume 
  puts "PASS"
else
  puts "F"
end

# set_channel (this will change the tv's channel to whatever integer is passed to this method)
puts "Change channel"
puts
remote.set_channel(28)

if tv.channel == 28
  puts "PASS"
else
  puts "F"
end

p tv