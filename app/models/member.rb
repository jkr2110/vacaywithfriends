class Member < ActiveRecord::Base

  attr_accessible :group_id, :user_id

  has_many :users, :through => :groups

end
