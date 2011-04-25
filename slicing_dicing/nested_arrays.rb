require 'pp'

values = [
  [3.2, 7.1, 5.2, 10.6],
  [20.7, 31.2, 1.1, 4.3],
  [100.0, 5.0, -30.0, 5.0]
]

values1 = [
  [20.7, 31.2, 1.1, 4.3],
  [100.0, 5.0, -30.0, 5.0],
  [3.2, 7.1, 5.2, 10.6]
]

puts 'Print the array in ascending order of the sum of each nested array'
pp values1.sort { |a, b| a <=> b }
puts 'INCOMPLETE'

puts 'Sums'
values1.each do |sumz|
  puts sumz.inject { |sum, num| sum + num }
end

puts 'Print the 2nd element of the array'
puts values[1]
puts ''
puts '-------'
puts ''

puts 'Remove the last element of the array and print'
puts values.first(2)
puts ''
puts '-------'
puts ''

puts 'Flatten the array and store it in a variable'
flat = values.flatten
puts flat
puts ''
puts '-------'
puts ''

puts 'Print the new array in ascending order'
puts flat.sort { |a, b| a <=> b }
puts ''
puts '-------'
puts ''

puts 'Print the new array in descending order'
puts flat.sort { |a, b| b <=> a }
puts ''
puts '-------'
puts ''

puts 'Print the second element of EACH array'
values.each do |value|
  puts value[1]
end
puts ''
puts '-------'
puts ''

puts 'Print EACH array with the last element removed'
values.each do |drops|
  puts drops.first(3)
end
puts ''
puts '-------'
puts ''