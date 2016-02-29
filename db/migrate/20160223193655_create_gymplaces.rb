class CreateGymplaces < ActiveRecord::Migration
  def change
    create_table :gymplaces do |t|
      t.string :place
      t.string :description
      t.string :location
      t.string :city
      t.float :latitude
      t.float :longitude
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
