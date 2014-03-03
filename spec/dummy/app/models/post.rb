class Post < ActiveRecord::Base
  attr_accessible :body, :title

  include ChooChoo::Concerns::Trackable::Parent
end
