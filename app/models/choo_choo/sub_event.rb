module ChooChoo

  # QUESTION: Do we need a sub-event or should they be baked together somehow?
  module SubEvent
    extend ActiveSupport::Concern

    included do
      after_create :on_create
      after_update :on_update
      before_destroy :on_destroy

    end

    # does not belong to activity

    private

    def on_create
      self.master.sub_event_happened('created', self)
    end

    def on_update(info)
      self.master.sub_event_happened('updated', self)
    end
  end

end
