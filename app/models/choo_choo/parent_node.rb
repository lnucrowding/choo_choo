module ChooChoo

  module ParentNode
    extend ActiveSupport::Concern

    included do

      # TODO: break out into base_event?
      after_create :on_create
      after_update :on_update
      before_destroy :on_destroy

      has_one :activity, as: :parent_node, class_name: 'ChooChoo::Activity', dependent: :destroy
    end


    # called from subactivites when something has happened
    def child_event_happened(activity_name, model)
      # facade
      self.activity.event_happened(activity_name, model)
    end

    private

    def on_create
      ChooChoo::Activity.create(parent_node: self)
    end

    def on_update
      self.activity.event_happened('updated', self)
    end

    def on_destroy
      self.activity.event_happened('destroyed', nil)
    end
  end

end
