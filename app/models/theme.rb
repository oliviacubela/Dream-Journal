class Theme < ActiveRecord::Base
  has_many :dreams
  has_many :users, through: :dreams

  # accepts_nested_attributes_for
end
