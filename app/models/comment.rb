class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user

  belongs_to :comment
  has_many :comments

  def next
    self.comment
  end

end
