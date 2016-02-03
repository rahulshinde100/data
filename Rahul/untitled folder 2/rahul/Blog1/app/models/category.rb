class Category < ActiveRecord::Base
  attr_accessible :title
  belongs_to :post
end
