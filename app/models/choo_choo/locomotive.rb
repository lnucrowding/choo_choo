module ChooChoo
  class Locomotive < ActiveRecord::Observer

    # TODO: How to add these dynamically?
    observe :post, :comment

    def after_create(record)
      define_recipient(record)
      Carriage.create!(activity_type: 'created', excerpt: "A new #{@recipient_type} was created", recipient_id: @recipient_id, recipient_type: @recipient_type)
    end

    def after_update(record)
      define_recipient(record)
      Carriage.create!(activity_type: 'updated', excerpt: "A #{@recipient_type} was updated", recipient_id: @recipient_id, recipient_type: @recipient_type)
    end

    def after_destroy(record)
      define_recipient(record)
      Carriage.create!(activity_type: 'deleted', excerpt: "A #{@recipient_type} was updated", recipient_id: @recipient_id, recipient_type: @recipient_type)
    end

    def define_recipient(record)
      @recipient_id = record.id
      @recipient_type = record.class.name.demodulize.downcase
    end

  end
end
