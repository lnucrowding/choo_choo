class Comment < ActiveRecord::Base

  # must be set to a reference this model has access to, and is a MasterEvent
  # TODO: set master somehow
  include ChooChoo::ChildNode
  attr_accessible :body, :user, :post

  set_parent :post

  belongs_to :user
  belongs_to :post
end
