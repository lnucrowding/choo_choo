# app/models/choo_choo/concerns/master_event.rb
module ChooChoo

  module ParentNode
    extend ActiveSupport::Concern

    included do

      # TODO: break out into base_event?
      after_create :on_create
      after_update :on_update
      before_destroy :on_destroy

      has_one :activity, as: :master_event, class_name: 'ChooChoo::Activity'
    end


    # called from subactivites when something has happened
    def sub_event_happened(activity_name, model)
      # facade
      self.activity.event_happened(activity_name, model)
    end

    private

    def on_create
      # FIXME: shouldn't it know what self is anyway?
      ChooChoo::Activity.create(master_event: self)
    end

    def on_update
      self.activity.event_happened('updated', self)
    end
  end

end
