require 'rails_helper'

RSpec.describe 'Students Index Page', type: :feature do
  before(:each) do
    @student_1 = Student.create!(name: 'Jimmi', cohort: '1906', age: 29)
    @student_2 = Student.create!(name: 'Janis', cohort: '1908', age: 25)
    @student_3 = Student.create!(name: 'Jim', cohort: '1908', age: 27)

    @instructor_1 = @student_1.instructors.create!(name: 'Athos')
    @instructor_2 = @student_2.instructors.create!(name: 'Porthos')
    @instructor_3 = @student_3.instructors.create!(name: 'Aramis')

    visit '/students'
  end

  it 'should display the name, cohort, and instructor of each student' do

    within "#student-#{@student_1.id}" do
      expect(page).to have_content("Name: #{@student_1.name}")
      expect(page).to have_content("Cohort: #{@student_1.cohort}")
      expect(page).to have_content("Instructor: #{@instructor_1.name}")
    end

    within "#student-#{@student_2.id}" do
      expect(page).to have_content("Name: #{@student_2.name}")
      expect(page).to have_content("Cohort: #{@student_2.cohort}")
      expect(page).to have_content("Instructor: #{@instructor_2.name}")
    end

    within "#student-#{@student_3.id}" do
      expect(page).to have_content("Name: #{@student_3.name}")
      expect(page).to have_content("Cohort: #{@student_3.cohort}")
      expect(page).to have_content("Instructor: #{@instructor_3.name}")
    end
  end

  it 'each instructor name is a link that redirects to an Instructor Show Page' do
    within "#student-#{@student_1.id}" do
      expect(page).to have_link(@instructor_1.name)
      click_link @instructor_1.name
      expect(current_path).to eq("/instructors/#{@instructor_1.id}")
    end
  end
end
