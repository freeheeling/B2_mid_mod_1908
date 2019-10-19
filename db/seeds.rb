Student.destroy_all
Instructor.destroy_all

# Students
student_1 = Student.create(name: 'Lavender Brown', cohort: '1906', age: 30)
student_2 = Student.create(name: 'Fleur Delacour', cohort: '1908', age: 24)
student_3 = Student.create(name: 'Marietta Edgecombe', cohort: '1909', age: 28)
student_4 = Student.create(name: 'Lee Jordan', cohort: '1906', age: 23)
student_5 = Student.create(name: 'Remus Lupin', cohort: '1908', age: 33)
student_6 = Student.create(name: 'Cormac McLaggen', cohort: '1909', age: 37)

# Instructors
instructor_1 = Instructor.create(name: 'Septima Vector')
instructor_2 = Instructor.create(name: 'Pomona Sprout')
instructor_3 = Instructor.create(name: 'Quirinus Quirrell')

# InstructorStudents
instructor_student_1 = InstructorStudent.create(student_id: student_1.id, instructor_id: instructor_1.id)
instructor_student_2 = InstructorStudent.create(student_id: student_2.id, instructor_id: instructor_2.id)
instructor_student_3 = InstructorStudent.create(student_id: student_3.id, instructor_id: instructor_3.id)
instructor_student_4 = InstructorStudent.create(student_id: student_4.id, instructor_id: instructor_1.id)
instructor_student_5 = InstructorStudent.create(student_id: student_5.id, instructor_id: instructor_2.id)
instructor_student_6 = InstructorStudent.create(student_id: student_6.id, instructor_id: instructor_3.id)
