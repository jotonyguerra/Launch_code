names = [
  "John",
  "Hannah",
  "Mark",
  "Sam",
  "Anna",
  "Sandra",
  "Susan",
  "Julie",
  "Yanni",
  "Eve",
  "Sunny",
  "Matt"
]

## Accessing elements within our `names` array:
puts "#{names.count}"
# 1. Retrieve the first name from the `names` array.
puts "The first name in the array is #{names[0]}"
# 2. Retrieve the second name from the `names` array.
puts "The second name in the array is #{names[1]}"
# 3. Retrieve the third name from the `names` array.
puts "The third name in the array is #{names[2]}"
# 4. Retrieve the last name from the `names` array.
puts "The last name in the array is #{names.last}"
# 5. Retrieve the second-to-last name from the `names` array.
puts "The second-to-last name in the array is #{names[10]}"
# 6. Create a new array with the first two elements in the `names` array.
name = names.take(2)
puts "#{name}"
# 7. Create a new array with the first four elements in the `names` array.
names2= names.take(4)
puts "#{names2}"

## Manipulating the `names` array:

# 1. Add your name to the `names` array.
my_name = "Tony"
names << my_name
puts "#{names}"
# 2. Replace the first element in the array with your best friend's name.
name2=names.unshift("Ray").delete_if { |a| a == "John" }

puts "#{name2}"
puts "#{name2.length}"
# 3. Reassign the last element in the array with the name of your arch-nemesis.
name2 = name2.delete_if{|a| a=="Tony"}
name2 << "Anthony"
puts "#{name2}"

## Asking questions about our `names` array:

# 1. How many names are on the list?
puts "#{names.length}"
# 2. Who is the third name on the list?
puts "#{names.pop(2)}"
# 3. Output each name and where it occurs in the array.
##could use names.each_with_index
names.each {|a| puts "#{a} (#{names.index(a)})"}
# 4. Sort the names in alphabetical order.
puts names.sort.inspect
# 5. Sort the names by smallest number of characters to largest.
puts names.sort_by {|a| a.size}.inspect
# 6. Supply the sum of all the characters in the list of names.
sum_of = 0
names.each do |a|
   sum_of += a.size

end
puts "Total = #{sum_of}"
# 7. Do any of the names start with "y"?
starts_y=  names.any? do |name|
  name.start_with?('Y')
end
  if starts_y
    puts "There is a name that starts with Y"
  else
    puts none of the names start with "Y"
  end

# 8. Are all of the names 3 characters long or larger?
 greater_than_3= names.all? do |name|
   name.size >= 3
 end
 if greater_than_3
   puts "all names are 3 chars long or longer"
 else
   puts "all names are not 3 chars long or longer"
 end
# 9. Using the `names` array, create a new array containing only palindrome names.
pal_names= names.select{|name| name.downcase == name.reverse.downcase}
puts pal_names.inspect
# 10. Find the first name that starts with "S".
s_name  = names.find do |name|
  name[0] == "S"
end
puts s_name
# 11. Create a new array containing names that start with "S".
s_names  = names.select do |name|
  name[0] == "S"
end
puts s_names.inspect
puts "\n"
# 12. Create a new array of names ending with a vowel.
vowel_end = names.select do |name|
  name[-1] == 'a' || name[-1] == 'e' || name[-1] == 'i'||name[-1] == 'o'||name[-1]== 'u'
end
puts vowel_end.inspect
puts "----------------"
# 13. Divide the names into groups of 3.
names.each_slice(3) do |new_array|
  puts new_array.inspect
end
