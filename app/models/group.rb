class Group < ActiveRecord::Base
  attr_accessible :name

 
  belongs_to :vacation
  belongs_to :member
  
end
