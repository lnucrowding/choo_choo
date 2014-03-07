class Comment < ActiveRecord::Base
  attr_accessible :entry

  belongs_to :user
  belongs_to :post
end
