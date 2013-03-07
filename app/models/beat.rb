class Beat < ActiveRecord::Base

  attr_accessible :comment, :picture, :vacation_id

  belongs_to :vacation

end
