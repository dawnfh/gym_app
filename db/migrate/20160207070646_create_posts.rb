class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :place
      t.string :location
      t.string :city
      t.text :post
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
