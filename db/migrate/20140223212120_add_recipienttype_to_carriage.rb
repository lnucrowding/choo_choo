class AddRecipienttypeToCarriage < ActiveRecord::Migration
  def change
    add_column :choo_choo_carriages, :recipient_type, :string
  end
end
