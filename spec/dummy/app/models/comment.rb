class Comment < ActiveRecord::Base

  # must be set to a reference this model has access to, and is a MasterEvent
  # TODO: set master somehow
  include ChooChoo::SubEvent

  attr_accessible :body

  belongs_to :user
  belongs_to :post
end
