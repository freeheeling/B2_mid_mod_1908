# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student_1 = Student.create(name: 'Jimmi', cohort: '1906', age: 29)
student_2 = Student.create(name: 'Janis', cohort: '1908', age: 25)
student_3 = Student.create(name: 'Amy', cohort: '1909', age: 27)

instructor_1 = Instructor.create(name: 'Athos')
instructor_2 = Instructor.create(name: 'Porthos')
instructor_2 = Instructor.create(name: 'Aramis')

instructor_1 = student_1.instructors.create!(name: 'Athos')
instructor_2 = student_2.instructors.create!(name: 'Porthos')
instructor_3 = student_3.instructors.create!(name: 'Aramis')
