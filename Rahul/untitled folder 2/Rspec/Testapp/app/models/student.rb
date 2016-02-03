class Student < ActiveRecord::Base
	validates_presence_of :name , :classs , :age
	validates :name ,length: {minimum: 2}
	validates :age , numericality: { only_integer: true }

end
#length: {is: 2} ,

Student.create(name: "Sarvesh").valid?