class Post < ActiveRecord::Base
  attr_accessible :body, :title, :user

  belongs_to :user

  def excerpt
    "Custom excerpt"
  end

  include ChooChoo::Locomotive
  cc_header :title
  cc_excerpt :excerpt
  cc_associates :comments
end
