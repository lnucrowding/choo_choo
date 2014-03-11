module ChooChoo

  # a new activity is created when a ParentNode is created
  # the event_happened method is called when a ChildNode has happened
  class Activity < ActiveRecord::Base

    # TODO: maybe rename to master_event_model etc...? kind of confusing
    attr_accessible :last_action, :master_event, :last_event

    # TODO: db index on polymorphic fields


    belongs_to :master_event, polymorphic: true
    belongs_to :last_event, polymorphic: true

    after_create :on_create

    # a new master is created
    def on_create
      self.event_happened('created', self.master_event)
    end

    # registers an updated child activity
    def event_happened(event_name, model)
      self.last_action = event_name
      self.last_event = model
      self.updated_at = Time.zone.now
      self.save!
    end
  end
end
