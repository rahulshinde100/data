class Department < ActiveRecord::Base
	has_many :courses
	has_many :students

	validates_presence_of :name , :on => :create or :update

	validates_uniqueness_of :name , :on => :create or :update
end
