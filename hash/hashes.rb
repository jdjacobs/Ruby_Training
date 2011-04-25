require 'pp'

hash1 = {"colors"  => ["red", "blue", "green"],
        "letters" => ["a", "b", "c"],
        "numbers" => ["1", "2", "3"]}

# Print the hash
pp hash1

# Print the keys
hash1.each do |key, value|
  puts key
end

# Print the values
hash1.each do |key, value|
  puts value
end

# Print the first key and first values
puts hash1.keys[1]
puts hash1.fetch("colors")

# Print the last key and last values
puts hash1.keys.last
puts hash1.fetch("numbers")

# Print the first key and second value
puts hash1.keys[1]
colors = hash1.fetch("colors")
puts colors[1]

# Print the keys and first values
hash1.each do |keys, values|
  puts keys
  puts values[0]
end
# Print the first key and alphabetize the values
puts hash1.keys[1]
puts hash1.fetch("colors").sort { |a, b| a <=> b }