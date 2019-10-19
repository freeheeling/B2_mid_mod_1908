class Student < ApplicationRecord
  has_many :instructor_students
  has_many :instructors, through: :instructor_students

  validates_presence_of :name, :cohort, :age

  def self.avg_age
    average(:age)
  end
end
