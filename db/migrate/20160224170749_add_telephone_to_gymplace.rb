class AddTelephoneToGymplace < ActiveRecord::Migration
  def change
    add_column :gymplaces, :telephone, :string
  end
end
