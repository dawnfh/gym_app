class RemovePostIdFromGymPlace < ActiveRecord::Migration
  def change
    remove_column :gymplaces, :post_id, :integer
  end
end
