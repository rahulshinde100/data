class Post < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :comments
  has_many :tags, :as => :taggable
  has_one :category
  has_one :user

  validates_presence_of :body, :title
end
