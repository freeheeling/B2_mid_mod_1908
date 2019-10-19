require 'rails_helper'

RSpec.describe 'Instructor Show Page', type: :feature do
  it 'should show instructor name, names of their students and average student age' do
    instructor = Instructor.create!(name: 'Athos')

    student_1 = instructor.students.create!(name: 'Jimmi', cohort: '1906', age: 29)
    student_2 = instructor.students.create!(name: 'Peter', cohort: '1906', age: 23)

    visit "/instructors/#{instructor.id}"

    expect(page).to have_content(instructor.name)
    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content("Average Age of Students: 26")
  end
end
