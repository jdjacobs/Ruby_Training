array1 = [1, 2, 10, 3, 2.5, 13]

# Print the first two elements of array1
puts array1[0..1]
puts "_____"

# Print the 2nd through the 5th elements of array1
puts array1[1..4]
puts "_____"

# Print the last element of array1
puts array1.last
puts "_____"

# Print array1 in the reverse order
puts array1.reverse
puts "_____"

# Print array1 in ascending order
puts array1.sort { |a, b| a <=> b }
puts "_____"

# Print array1 in descending order
puts array1.sort { |a, b| b <=> a }
puts "_____"

# Insert the number 7.5 after the 3rd element of array1
puts array1.insert(3, 7.5)
