module ChooChoo
  class Carriage < ActiveRecord::Base
    attr_accessible :activity_type, :excerpt, :recipient_id, :recipient_type
  end
end
