class Comment < ActiveRecord::Base
  # Example implentation of choo_choo
  # here comment is tracked as a child node of Activity
  # and its parent (ParentNode) is set to Post.
  # Hence, each change to this model will be tracked to its beloning post parent
  include ChooChoo::ChildNode
  attr_accessible :body, :user, :post

  set_parent :post

  belongs_to :user
  belongs_to :post
end
