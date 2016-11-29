puts "Welcome to the Time Capsule, please enter your name "
name= gets.chomp
items = Array.new
input =
num = Array.new
## while loop to acquire input of user
while input != "done"
  puts "what would you like to add to the time capsule? (type 'done' if finished): "
  input=gets.chomp

  if input != "done"
    puts "how many of #{input} would you like to add?: "
    number = gets.chomp
    input += " (#{number})" ## never would of thought to use += to add the numbers to the array
    items << input
  end
end

## output of app 
if items == []
  puts "Your time capsule is empty!"
else
puts "#{name}, thanks for trying our Time Capsule maker. Here is a list of the items in your Time Capsule!: "
puts
items.each {|a| puts "*#{a}"}
## part 2 done
end
