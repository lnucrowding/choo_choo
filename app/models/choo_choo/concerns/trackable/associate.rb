module ChooChoo::Concerns
  module Trackable::Associate
    extend ActiveSupport::Concern

    included do
      after_create :track_create
      after_update :track_update
      before_destroy :track_destroy
    end

    private

    def track_create
      #TODO: implement
    end

    def track_update
      #TODO: implement
    end

    def track_destroy
      #TODO: implement
    end

    def define_tracked_resource
      #TODO: implement
    end

  end
end
