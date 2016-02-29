class AddZipCodeToGymPlace < ActiveRecord::Migration
  def change
    add_column :gymplaces, :zipcode, :string
  end
end
