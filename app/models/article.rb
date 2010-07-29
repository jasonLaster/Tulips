class Article < ActiveRecord::Base
  belongs_to :network
  belongs_to :user
  
  has_many :comments
  
  def poster
    self.user.name
  end

end
