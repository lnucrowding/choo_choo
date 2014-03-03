class Post < ActiveRecord::Base
  attr_accessible :body, :title

  belongs_to :user

  include ChooChoo::Concerns::Trackable::Parent
end
