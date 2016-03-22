class AddEmailToGymplace < ActiveRecord::Migration
  def change
    add_column :gymplaces, :email, :string
  end
end
