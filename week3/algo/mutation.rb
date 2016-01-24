# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

# reduce string to unique char
# check if the same
#   when the char are the same. We can move on in both strings eventually return true
#   when they are different we want to return false

def standardize(word)
  word.split("").uniq
end

def mutation?(base_word, mutation)
  # base_word_array = base_word.split(//) 
  # mutation_array = mutation.split(//) 

  # (mutation_array - base_word_array).empty?
  arr1 = standardize(base_word)
  arr2 = standardize(mutation)
  result = true

  arr2.each do |char|
    result = false unless arr1.include?(char)
  end
  
  result
end
# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end