class Network < ActiveRecord::Base
  has_many :memberships
  has_many :users, :through => :memberships
  has_many :articles
  
  
end
