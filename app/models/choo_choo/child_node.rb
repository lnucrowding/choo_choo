module ChooChoo
  module ChildNode
    extend ActiveSupport::Concern

    included do
      cattr_reader :my_parent

      # Callbakcs for when a model tacked by choo_choo
      # is updated, creeated or destroyed
      after_create :on_create
      after_update :on_update
      before_destroy :on_destroy

      # Defines the parent (the model where ParentNode is included)
      # for the model to be tracked by choo_choo as a child node
      def self.set_parent(parent)
        @@my_parent = parent
      end

    end

    # The callback actions below are called when there is a new
    # activity for a child node tracked by choo_choo
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
