class Vacation < ActiveRecord::Base
  attr_accessible :body, :title, :beats_attributes

  has_many :beats 

  accepts_nested_attributes_for :beats
  
end
