class Dream < ActiveRecord::Base
  belongs_to :user 
  belongs_to :theme

  accepts_nested_attributes_for :theme 

  #gives you methods to create a new theme when youre creating a new dream(simultaneously)

  
  # def theme_name
  #   self.try(:theme).try(:name, :description)
  # end

  # def theme_name=(name)
  #   theme = Theme.find_or_create_by(name: name, description: description)
  #   self.theme = theme
  # end

end
