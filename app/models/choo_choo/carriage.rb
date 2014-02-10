module ChooChoo

  # This class contains the combined activity notification
  class Carriage < ActiveRecord::Base
    attr_accessible :activity_type, :excerpt
  end

end
