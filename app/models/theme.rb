class Theme < ApplicationRecord
  has_many :dreams
  has_many :users, through: :dreams
end
