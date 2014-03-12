class CreateChooChooActivities < ActiveRecord::Migration
  def change
    create_table :choo_choo_activities do |t|

      t.string :last_action

      t.belongs_to :master_event, polymorphic: true
      t.belongs_to :last_event, polymorphic: true

      t.timestamps
    end
  end
end
