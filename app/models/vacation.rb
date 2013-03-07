class Vacation < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :beats
  
end
