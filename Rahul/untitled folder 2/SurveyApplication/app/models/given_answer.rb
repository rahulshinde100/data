class GivenAnswer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  belongs_to :survey
 # accepts_nested_attributes_for :survey
end

