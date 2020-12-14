class User < ApplicationRecord
  has_many :dreams 
  has_many :themes, through: :dreams

  validates :email, uniqueness: true
end
