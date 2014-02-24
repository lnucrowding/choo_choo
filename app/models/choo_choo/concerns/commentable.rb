module ChooChoo
  module Concerns::Commentable
    extend ActiveSupport::Concern

    included do
      after_create :track_create
      after_update :track_update
    end

    private

    def track_create
      define_recipient
      Carriage.create!(activity_type: 'created', excerpt: "A new #{@recipient_type} was created (through Concerns)", recipient_id: @recipient_id, recipient_type: @recipient_type)
    end

    def track_update
      define_recipient
      Carriage.create!(activity_type: 'updated', excerpt: "A new #{@recipient_type} was updated (through Concerns)", recipient_id: @recipient_id, recipient_type: @recipient_type)
    end

    def define_recipient
      @recipient_id = self.id
      @recipient_type = self.class.name.demodulize.downcase

      #only temporary - fetches last comment
      @recipient_last_child = self.comments.last.comment_entry
    end

  end
end
