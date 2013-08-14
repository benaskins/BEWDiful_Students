class Story < ActiveRecord::Base
  attr_accessor :category

  validates :headline, :content, :presence => true
  
  belongs_to :user
  has_many :comments  
end
