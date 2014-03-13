module ChooChoo
  # A new activity is created when a ParentNode is created
  # the event_happened method is called whenever there is a state change for the
  # tracked models using Activity as a ParentNode or a ChildNode
  class Activity < ActiveRecord::Base

    attr_accessible :last_action, :parent_node, :last_updated_node

    belongs_to :parent_node, polymorphic: true
    belongs_to :last_updated_node, polymorphic: true

    after_create :on_create

    # Initial creation of a new activity with a ParentNode set to the model
    # in the hosting app using choo_choo that will act as a parent
    def on_create
      self.event_happened('created', self.parent_node)
    end

    # Tracks model changes (created, updated, deleted)
    # Wether it's a parent or child node
    def event_happened(event_name, model)
      self.last_action = event_name
      self.last_updated_node = model
      self.updated_at = Time.zone.now
      self.save!
    end
  end
end
