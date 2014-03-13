class RemoveLocomotivesAndCarriages < ActiveRecord::Migration
  def change
    drop_table :choo_choo_locomotives
    drop_table :choo_choo_carriages
  end
end
