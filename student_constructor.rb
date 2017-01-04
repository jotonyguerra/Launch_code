class Student
  attr_accessor :name, :last_name, :grade

  def initialize(student_info)
    @first_name = student_info[:name]
    @last_name = student_info[:last_name]
    @grade = student_info[:grade]
    @average = student_average
  end

  def student_average
    sum = 0.0
    grade.each do |num|
      sum += num
    end
    sum / @grade.length
  end
end

s1=Student.new("tony", "guerra", [90,20,92])
require 'pry'
binding.pry
