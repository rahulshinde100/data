class Course < ActiveRecord::Base
	has_many :students
	belongs_to :department
	validates_presence_of :name , :department_id , :on => :create or :update
end
