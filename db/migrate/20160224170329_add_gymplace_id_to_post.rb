class AddGymplaceIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :gymplace_id, :integer
  end
end
