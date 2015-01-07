class Post < ActiveRecord::Base

  #attr_accessible :title, :content
  validates :title, :presence => true, :uniqueness => true
  validates :content, :presence => true, :uniqueness => true
end
