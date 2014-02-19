class CreateChooChooActivities < ActiveRecord::Migration
  def change
    create_table :choo_choo_activities do |t|

      t.timestamps
    end
  end
end
