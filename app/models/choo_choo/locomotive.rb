module ChooChoo

  # This class collects activities in carriages
  class Locomotive < ActiveRecord::Observer

    # TODO: These should be dynamic
    observe :post, :comment

    def after_create(record)
      # TODO: Implement listening methods

      class_name = record.class.name.split(':').last
      Carriage.create!(activity_type: 'created', excerpt: "A new #{class_name} has been created.")
    end

  end
end
