class CreateChooChooCarriages < ActiveRecord::Migration
  def change
    create_table :choo_choo_carriages do |t|
      t.string :excerpt
      t.string :activity_type
      t.integer :recipient_id

      t.timestamps
    end
  end
end
