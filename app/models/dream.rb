class Dream < ApplicationRecord
  belongs_to :user 
  belongs_to :theme

  def user_name=(username)
    self.user = User.find_or_create_by(username: username)
  end

  def user_name 
    self.user ? self.user.username : nil
  end

  def theme_name=(name)
    self.theme_name = Theme.find_or_create_by(name: name)
  end

  def theme_name 
    self.theme ? self.theme.name : nil
  end
end
