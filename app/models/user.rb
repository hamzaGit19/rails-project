class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  paginates_per 1

  has_many :blogs
  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true, :confirmation => true
  validates :email_confirmation, :presence => true, :on => :create


end
