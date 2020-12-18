class User < ActiveRecord::Base
  has_many :dreams 
  has_many :themes, through: :dreams

  validates :email, uniqueness: true
end
