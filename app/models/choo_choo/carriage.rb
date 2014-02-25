module ChooChoo
  class Carriage < ActiveRecord::Base
    attr_accessible :activity_type,
                    :header,
                    :excerpt,
                    :tracked_resource_id,
                    :tracked_resource_type,
                    :creator_id

    validates :activity_type, presence: true
    validates :header, presence: true
    validates :excerpt, presence: true
    validates :tracked_resource_id, presence: true
    validates :tracked_resource_type, presence: true
  end
end
