class Article < ActiveRecord::Base
  belongs_to :network
  belongs_to :user
  
  def poster
    self.user.name
  end

end
