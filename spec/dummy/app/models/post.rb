class Post < ActiveRecord::Base
  attr_accessible :body, :title

  belongs_to :user

  include ChooChoo::Locomotive
  cc_header :title
  cc_excerpt :body
  cc_associates :user
end
