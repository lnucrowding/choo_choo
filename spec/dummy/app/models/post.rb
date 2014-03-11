class Post < ActiveRecord::Base
  include ChooChoo::MasterEvent

  attr_accessible :body, :title, :user

  belongs_to :user

  def excerpt(max_length = 60)
    self.body[0..60]
  end

end
