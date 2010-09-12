class Network < ActiveRecord::Base
  has_many :memberships, :dependent => :destroy
  has_many :users, :through => :memberships
  # has_many :users, :through => :memberships where admin and alias = admins
  
  has_many :articles, :dependent => :destroy
  
  
end
