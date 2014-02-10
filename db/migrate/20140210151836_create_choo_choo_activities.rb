class CreateChooChooActivities < ActiveRecord::Migration
  def change
    create_table :choo_choo_activities do |t|
      t.string :activity_type
      t.string :excerpt

      t.timestamps
    end
  end
end
