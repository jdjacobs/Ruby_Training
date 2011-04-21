array = 
  [ 5,
    {:first_name => 'Brian', :last_name => 'Reath'},
    "Hello",
    {:first_name => 'Jason', :last_name => 'Reath'},
    3.6 ]

staff.each do |x|
  # if its a hash, print the last name
  if x.class == Hash
    puts x[:last_name]
    
  # if its a number, print the square of the number
  elsif x.class == Fixnum or x.class == Float
    puts Math.sqrt(x)
    
  # if its a string, print the first two characters of the string
  elsif x.class == String
    puts x[0,2]
  end
end