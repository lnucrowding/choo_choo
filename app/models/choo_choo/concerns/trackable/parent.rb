module ChooChoo
  module Concerns::Trackable::Parent
    extend ActiveSupport::Concern

    included do
      after_create :track_create
      after_update :track_update
      before_destroy :track_destroy
    end

    private

    def track_create
      define_tracked_resource
      Carriage.create!( activity_type: 'created',
                        header: @header,
                        excerpt: @excerpt,
                        tracked_resource_id: @tracked_resource_id,
                        tracked_resource_type: @tracked_resource_type,
                        creator_id: @creator_id )
    end

    def track_update
      define_tracked_resource
      Carriage.create!( activity_type: 'updated',
                  header: @header,
                  excerpt: @excerpt,
                  tracked_resource_id: @tracked_resource_id,
                  tracked_resource_type: @tracked_resource_type,
                  creator_id: @creator_id )
    end

    def track_destroy
      #TODO: implement destroy action
    end

    def define_tracked_resource
      # TODO: make this more general and less tied to one particular model
      @header = self.title
      @excerpt = self.entry[0...60]
      @tracked_resource_id = self.id
      @tracked_resource_type = self.class.name.demodulize.downcase
      @creator_id = self.user_id
    end

  end
end
