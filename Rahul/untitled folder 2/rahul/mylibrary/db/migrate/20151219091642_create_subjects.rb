class CreateSubjects < ActiveRecord::Migration
  def self.up
    create_table :subjects do |t|
      t.string :name

      t.timestamps

    end
    
    	
   
	  #CreateSubjects.create :name => "Physics"
     # CreateSubjects.create :name => "Mathematics"
      #CreateSubjects.create :name => "Chemistry"
      #CreateSubjects.create :name => "Psychology"
      #CreateSubjects.create :name => "Geography"
     

  end

  def self.down
  	drop_table :subjects
  end
end
