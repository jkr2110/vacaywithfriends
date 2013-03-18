class Group < ActiveRecord::Base
	
	attr_accessible :name, :users_attributes

	belongs_to :vacations
	has_many :users, :through => :members
	has_many :members

	accepts_nested_attributes_for :users


end
