class Student < ActiveRecord::Base
	has_many :addresses , dependent: :destroy
	has_many :subjects , dependent: :destroy
	has_many :temp_addresses , dependent: :destroy
	accepts_nested_attributes_for :subjects
end
