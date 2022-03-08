require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# One-to-many association
@store1.employees.create(first_name: "Harry", last_name: "Potter", hourly_rate: 50)
@store1.employees.create(first_name: "Ron", last_name: "Weasly", hourly_rate: 120)
@store1.employees.create(first_name: "Hermione", last_name: "Granger", hourly_rate: 60)

@store2.employees.create(first_name: "Draco", last_name: "Malfoy", hourly_rate: 100)
@store2.employees.create(first_name: "Severus", last_name: "Snape", hourly_rate: 150)
@store2.employees.create(first_name: "Rubeus", last_name: "Hagrid", hourly_rate: 90)
