class AddGymplaceReferenceToPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :place, :string
  	remove_column :posts, :location, :string
  	remove_column :posts, :city, :string
  end
end
