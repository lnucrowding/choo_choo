module ChooChoo

  # A new activity is created when a ParentNode is created
  # the event_happened method is called when a ChildNode has happened
  class Activity < ActiveRecord::Base

    # TODO: maybe rename to kind of confusing
    attr_accessible :last_action, :parent_node, :last_updated_node

    # TODO: db index on polymorphic fields

    belongs_to :parent_node, polymorphic: true
    belongs_to :last_updated_node, polymorphic: true

    after_create :on_create

    # A new master is created
    def on_create
      self.event_happened('created', self.parent_node)
    end

    # registers an updated child activity
    def event_happened(event_name, model)
      self.last_action = event_name
      self.last_updated_node = model
      self.updated_at = Time.zone.now
      self.save!
    end
  end
end
