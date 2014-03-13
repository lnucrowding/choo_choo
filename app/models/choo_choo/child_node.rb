module ChooChoo

  # QUESTION: Do we need a sub-event or should they be baked together somehow?
  module ChildNode
    extend ActiveSupport::Concern

    # NOTE: This class is still very unfinished

    included do
      cattr_reader :my_parent

      after_create :on_create
      after_update :on_update
      before_destroy :on_destroy

      def self.set_parent(parent)
        @@my_parent = parent
      end

    end

    # does not belong to activity

    private

    def on_create
      self.send(@@my_parent).activity.event_happened('created', self)
    end

    def on_update
      self.send(@@my_parent).activity.event_happened('updated', self)
    end

    def on_destroy
      self.send(@@my_parent).activity.event_happened('deleted', self)
    end
  end
end
