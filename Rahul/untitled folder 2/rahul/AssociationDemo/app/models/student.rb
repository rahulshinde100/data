class Student < ActiveRecord::Base
	#attr_accessible :id
	belongs_to :department
	belongs_to :course

	validates_presence_of :id , :name , :std , :department_id , :course_id
end
