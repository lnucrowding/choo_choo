class AddColumnsToCarriage < ActiveRecord::Migration
  def change
    rename_column :choo_choo_carriages, :recipient_id, :tracked_resource_id
    rename_column :choo_choo_carriages, :recipient_type, :tracked_resource_type
    add_column :choo_choo_carriages, :header, :string
    add_column :choo_choo_carriages, :creator_id, :integer
  end
end
