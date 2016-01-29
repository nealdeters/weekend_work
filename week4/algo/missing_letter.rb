# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

# split the string into an array
# each through and check the next char against the current
# if next char not in order then append to result array

def find_missing_letter(range)
  result = []
  prev_char = ""
  array = range.split("")

  array.each do |char|
    if prev_char.next != char
      result << prev_char.next
    end
    prev_char = char
  end
  result
end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end