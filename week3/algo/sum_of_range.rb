# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)
  # first = array.first
  # last = array.last

  # if last > first
  #   range = [first..last]
  #   range = Range.new(first, last)
  # else
  #   last < first
  #   range = [last..first]
  #   range = Range.new(last, first)
  # end

  # range.reduce(:+) #adds the numbers enumerables inject ruby docs
  
  array.sort!
  num1 = array[0]
  num2 = array[1]
  range = (num1..num2).to_a
  sum = 0

  range.each do |number|
    sum += number
  end

  sum

end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end