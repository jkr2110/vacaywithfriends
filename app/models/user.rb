class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  attr_accessible :email, :name, :password, :groups_attributes

  validates_presence_of :username

  has_many :groups, :through => :members
  has_many :members
  #belongs_to :member, :foreign_key => "member_id"
  accepts_nested_attributes_for :groups
end
