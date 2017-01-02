def average(grades)
  sum = 0
  grades.each do |grade|
    sum += grade
  end
   sum / grades.size.to_f
end
jane_grades = [98, 95, 88, 97, 74]
jane_average = average(jane_grades)
puts jane_average
samantha_grades = [85,93,98,88,49]
samatha_average = average(samantha_grades)
puts samatha_average
matt_grades = [87,93,89,97,65]
matt_average = average(matt_grades)
puts matt_average
def rankings(students)
  students.each_with_index do |rank, index|
    puts "#{index+1}: #{rank}"
  end
end
student = ["Johnny", "Jane", "Sally", "Elizabeth", "Michael"]
rankings(student)
