class Beat < ActiveRecord::Base

  attr_accessible :comment, :picture, :vacation_id

  belongs_to :vacation

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" },
      :url  => "/assets/products/:id/:style/:basename.:extension",
      :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"


	validates_attachment_presence :picture
	validates_attachment_size :picture, :less_than => 5.megabytes
	validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png']      
end
