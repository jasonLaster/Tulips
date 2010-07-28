class Network < ActiveRecord::Base
  has_many :memberships, :dependent => :destroy
  has_many :users, :through => :memberships
  has_many :articles, :dependent => :destroy
  
  
end
