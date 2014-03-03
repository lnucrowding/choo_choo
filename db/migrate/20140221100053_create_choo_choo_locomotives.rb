class CreateChooChooLocomotives < ActiveRecord::Migration
  def change
    create_table :choo_choo_locomotives do |t|

      t.timestamps
    end
  end
end
