module ChooChoo

  # QUESTION: Do we need a sub-event or should they be baked together somehow?
  module ChildNode
    extend ActiveSupport::Concern

    # NOTE: This class is still very unfinished

    included do
      after_create :on_create
      after_update :on_update
      before_destroy :on_destroy

    end

    # does not belong to activity

    private

    def on_create
      # self.master.child_event_happened('created', self)
    end

    def on_update(info)
      # self.master.child_event_happened('updated', self)
    end
  end

end
