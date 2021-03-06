# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

def find_longest_word(sentence)
  longest_word = ""
  words = sentence.split(" ")
  
  words.each do |word|
    #new_word = word
    # if word.include?("?")
    #   word.delete! "?"
    # end
    just_letters_string = word.gsub(/\W/, "")
    test_string = longest_word.gsub(/\W/, "")
    word_array = word.split("")

    correct_characters = ""

    word_array.each do |character|
      correct_characters += character if character =~ /(\w|['])/
    end

    #longest_word = word unless word.length < longest_word.length
    if just_letters_string.length > test_string.length
      longest_word = correct_characters
    end
  end

  longest_word

end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word, that couldn't be in this phrase? or string")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end